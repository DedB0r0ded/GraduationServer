class User < ApplicationRecord
  has_many :tasks, inverse_of: 'creator'
  has_many :tasks, dependent: :destroy
  has_many :reviews, dependent: :destroy
  has_many :reg_keys
  has_many :reports, inverse_of: 'contractor_user'
  has_many :reports, inverse_of: 'customer_user'

  validates :first_name, presence: true, length: { maximum: 64 }
  validates :middle_name, length: { maximum: 64 }
  validates :last_name, length: { maximum: 64 }
  validates :email, presence: true
  validates :pwd_hash, presence: true
end