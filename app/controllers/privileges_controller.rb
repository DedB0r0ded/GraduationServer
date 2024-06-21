# frozen_string_literal: true

class PrivilegesController < ApplicationController
  def index
    @privileges = Privilege.all
    render json: @privileges, status: :ok
  end

  def show
    if find_instance
      render json: @privilege, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def create
    @privilege = Privilege.new(instance_params)
    if @privilege.save
      render json: @privilege, status: :created
    else
      render json: @privilege.errors, status: :unprocessable_entity
    end
  end

  def update
    find_instance
    old = @privilege.dup
    if @privilege.update!(instance_params)
      render json: { old: old, new: @privilege }, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  def destroy
    find_instance
    if @privilege.destroy
      render json: @privilege, status: :ok
    else
      render json: {}, status: :not_found
    end
  end

  private
  def find_instance
    @privilege = Privilege.find(params[:id])
  end

  def instance_params
    params.require(:privilege).permit(:name, :alias_en, :alias_ru)
  end
end
