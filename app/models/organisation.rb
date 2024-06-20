# frozen_string_literal: true

class Organisation < ApplicationRecord
  has_many :reg_keys
  has_many :organisation_services
  has_many :contracts, inverse_of: 'customer'
  has_many :contracts, inverse_of: 'contractor'

  validates :tid, :name, :address, :bank_account, :rcbic, :bank_name, :bank_address, presence: true
  validates :tid, length: { minimum: 8, maximum: 24 }
  validates :fax, length: { maximum: 25 }
  validates :name, length: { minimum: 5, maximum: 250 }
  validates :address, length: { minimum: 8, maximum: 250 }
  validates :bank_account, length: { minimum: 20, maximum: 40 }
  validates :rcbic, length: { minimum: 8, maximum: 15 }
  validates :bank_name, length: { minimum: 8, maximum: 250 }
  validates :bank_address, length: { minimum: 8, maximum: 250 }
end
