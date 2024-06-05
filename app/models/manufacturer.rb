# frozen_string_literal: true

class Manufacturer < ApplicationRecord
  has_many :components, :facilities

  validates :name, presence: true, length: { minimum: 4, maximum: 128 }
  validates :code, presence: true, length: { is: 4 }
  validates :country, presence: true, length: { maximum: 64}
  validates :description, length: { maximum: 512 }
  validates :rating, comparison: { greater_than: 0, less_than_or_equal_to: 5 }
end
