# frozen_string_literal: true

class Component < ApplicationRecord
  belongs_to :manufacturer
  has_many :facilities, through: :items

  validates :name, presence: true, length: { minimum: 4, maximum: 64 }
  validates :description, length: { maximum: 512 }
  validates :serial_number, presence: true
  validates :manufacturer_id, presence: true
end
