class FacilitiesController < ApplicationController
  def index
    @facilities = Facility.all
    render json: @facilities, status: :ok
  end

  def show
    if find_instance
      render json: @facility, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def new
  end

  def create
    @facility = Facility.new(instance_params)
    if @facility.save
      render json: @facility, status: :created
    else
      render json: @facility.errors, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    find_instance
    if @facility.update!(instance_params)
      render json: @facility, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @facility.destroy
      render json: @facility, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @facility = Facility.find(params[:id])
  end

  def instance_params
    params.require(:facility).permit(:name, :description, :serial_number, :manufacture_year, :manufacturer_id, :pic_route)
  end
end
