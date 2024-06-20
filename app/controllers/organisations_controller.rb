class OrganisationsController < ApplicationController
  def index
    @organisations = Organisation.all
    render json: @organisations, status: :ok
  end

  def show
    if find_instance
      render json: @organisation, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def create
    @organisation = Organisation.new(instance_params)
    if @organisation.save
      render json: @organisation, status: :created
    else
      render json: @organisation.errors, status: :unprocessable_entity
    end
  end

  def update
    find_instance
    old = @organisation.dup
    if @organisation.update!(instance_params)
      render json: { old: old, new: @organisation }, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @organisation.destroy
      render json: @organisation, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @organisation = Organisation.find(params[:id])
  end

  def instance_params
    params.require(:organisation)
        .permit(:tid, :client_only, :name, :address, :fax, :bank_account, :active, :rcbic, :bank_name, :bank_address)
  end
end
