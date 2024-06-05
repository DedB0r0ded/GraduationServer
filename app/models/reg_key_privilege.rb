# frozen_string_literal: true

class RegKeyPrivilege < ApplicationRecord
  belongs_to :reg_key

  validates :power, presence: true
  validates :reg_key_id, presence: true
end
