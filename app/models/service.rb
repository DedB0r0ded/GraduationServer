# frozen_string_literal: true

class Service < ApplicationRecord
  belongs_to :default_item, class_name: "Item"
  has_many :organisation_services

  validates :name, presence: true
end
