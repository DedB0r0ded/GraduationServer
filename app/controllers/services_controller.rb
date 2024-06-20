class ServicesController < ApplicationController
  def index
    @services = Service.all
    render json: @services, status: :ok
  end

  def show
    if find_instance
      render json: @service, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def create
    @service = Service.new(instance_params)
    if @service.save
      render json: @service, status: :created
    else
      render json: @service.errors, status: :unprocessable_entity
    end
  end

  def update
    find_instance
    old = @service.dup
    if @service.update!(instance_params)
      render json: { old: old, new: @service }, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @service.destroy
      render json: @service, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @service = Service.find(params[:id])
  end

  def instance_params
    params.require(:service).permit(:name, :description, :default_item_id)
  end
end
