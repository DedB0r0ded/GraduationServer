# frozen_string_literal: true

class Facility < ApplicationRecord
  belongs_to :manufacturer
  has_many :items
  has_many :components, through: :items

  validates :name, presence: true, length: { minimum: 4, maximum: 64 }
  validates :description, length: { maximum: 512 }
  validates :serial_number, presence: true
  validates :manufacturer_id, presence: true
end
