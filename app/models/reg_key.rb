class RegKey < ApplicationRecord
  belongs_to :organisation
  belongs_to :user
  has_one :reg_key_privilege, dependent: :destroy
  has_many :reports, inverse_of: 'contractor_reg_key'
  has_many :reports, inverse_of: 'customer_reg_key'

  validates :organisation_id, :value, presence: true
  validates :state, comparison: { greater_than_or_equal_to: 0, less_than_or_equal_to: 3}
end
