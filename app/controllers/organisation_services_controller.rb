class OrganisationServicesController < ApplicationController
  def index
    @organisation_services = OrganisationService.all
    render json: @organisation_services, status: :ok
  end

  def show
    if find_instance
      render json: @organisation_service, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def create
    @organisation_service = OrganisationService.new(instance_params)
    if @organisation_service.save
      render json: @organisation_service, status: :created
    else
      render json: @organisation_service.errors, status: :unprocessable_entity
    end
  end

  def update
    find_instance
    old = @organisation_service.dup
    if @organisation_service.update!(instance_params)
      render json: { old: old, new: @organisation_service }, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @organisation_service.destroy
      render json: @organisation_service, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @organisation_service = OrganisationService.find(params[:id])
  end

  def instance_params
    params.require(:organisation_service).permit(:service_id, :item_id, :organisation_id, :price)
  end
end
