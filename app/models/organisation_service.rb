# frozen_string_literal: true

class OrganisationService < ApplicationRecord
  belongs_to :service
  belongs_to :item
  belongs_to :organisation
  has_many :contract_services

  validates :price, presence: true, comparison: { less_than_or_equal_to: 999_999_999 }
end
