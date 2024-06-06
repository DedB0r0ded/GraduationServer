# frozen_string_literal: true

class ContractService < ApplicationRecord
  belongs_to :organisation_service
  belongs_to :contract

  validates [:organisation_service_id, :contract_id, :at], presence: true
end
