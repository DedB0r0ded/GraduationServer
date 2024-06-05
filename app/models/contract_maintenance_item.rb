# frozen_string_literal: true

class ContractMaintenanceItem < ApplicationRecord
  belongs_to :item
  belongs_to :contract
  belongs_to :maintenance_date_info, class_name: "DateInfo"
  belongs_to :replacement_date_info, class_name: "DateInfo"

  validates [:item, :contract, :maintenance_date_info_id, :replacement_date_info_id], presence: true
end
