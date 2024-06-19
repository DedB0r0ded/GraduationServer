class ComponentsController < ApplicationController
  def index
    @components = Component.all
    render json: @components, status: :ok
  end

  def show
    if find_instance
      render json: @component, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def new
  end

  def create
    @component = Component.new(instance_params)
    if @component.save
      render json: @component, status: :created
    else
      render json: @component.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    find_instance
    if @component.update!(instance_params)
      render json: @component, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @component.destroy
      render json: @component, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @component = Component.find(params[:id])
  end

  def instance_params
    params.require(:component).permit(:name, :description, :serial_number, :manufacture_year, :manufacturer_id, :pic_route)
  end
end
