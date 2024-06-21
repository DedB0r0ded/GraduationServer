# frozen_string_literal: true

class Privilege < ApplicationRecord
  has_many :reg_key_privileges
  has_many :reg_keys, through: :reg_key_privileges

  validates :name, presence: true, length: { maximum: 100 }
end
