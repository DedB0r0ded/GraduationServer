class ManufacturersController < ApplicationController
  def index
    @manufacturers = Manufacturer.all
    render json: @manufacturers, status: :ok
  end

  def show
    if find_instance
      render json: @manufacturer, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def new
  end

  def create
    @manufacturer = Manufacturer.new(instance_params)
    if @manufacturer.save
      render json: @manufacturer, status: :created
    else
      render json: @manufacturer.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    find_instance
    if @manufacturer.update!(instance_params)
      render json: @manufacturer, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @manufacturer.destroy
      render json: @manufacturer, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @manufacturer = Manufacturer.find(params[:id])
  end

  def instance_params
    params.require(:manufacturer).permit(:name, :code, :country, :description, :rating)
  end
end
