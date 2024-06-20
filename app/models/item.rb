# frozen_string_literal: true

class Item < ApplicationRecord
  belongs_to :component
  belongs_to :facility
  has_many :contract_maintenance_items
  has_many :services, inverse_of: "default_item"
  has_many :organisation_services

  validates :facility, presence: true
end
