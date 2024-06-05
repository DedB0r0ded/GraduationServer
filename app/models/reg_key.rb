# frozen_string_literal: true

class RegKey < ApplicationRecord
  belongs_to :organisation
  belongs_to :user
  has_one :reg_key_privilege, dependent: destroy

  validates [:organisation_id, :value], presence: true
  validates :state, comparison: { greater_than_or_equals_to: 0, less_than_or_equals_to: 3}
end
