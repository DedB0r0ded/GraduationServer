class ItemsController < ApplicationController
  def index
    @items = Item.all
    render json: @items, status: :ok
  end

  def show
    if find_instance
      render json: @item, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def create
    @item = Item.new(instance_params)
    if @item.save
      render json: @item, status: :created
    else
      render json: @item.errors, status: :unprocessable_entity
    end
  end

  def update
    find_instance
    old = @item.dup
    if @item.update!(instance_params)
      render json: { old: old, new: @item }, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @item.destroy
      render json: @item, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @item = Item.find(params[:id])
  end

  def instance_params
    params.require(:item).permit(:component_id, :facility_id)
  end
end
