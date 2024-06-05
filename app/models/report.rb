# frozen_string_literal: true

class Report < ApplicationRecord
  belongs_to :contractor_user, class_name: "User", foreign_key: "contractor_user_id"
  belongs_to :customer_user, class_name: "User", foreign_key: "customer_user_id"
  belongs_to :contractor, class_name: "Organisation", foreign_key: "contractor_id"
  belongs_to :customer, class_name: "Organisation", foreign_key: "customer_id"
  belongs_to :contract

  validates [:subject, :body, :contract_id, :contractor_user, :contractor], presence: true
  validates :subject, length: { maximum: 128 }
end
