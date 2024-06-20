# frozen_string_literal: true

class Report < ApplicationRecord
  belongs_to :contractor_reg_key, class_name: "RegKey"
  belongs_to :customer_reg_key, class_name: "RegKey"
  belongs_to :contract

  validates [:subject, :body, :contract_id, :contractor_user, :contractor], presence: true
  validates :subject, length: { maximum: 128 }
end
