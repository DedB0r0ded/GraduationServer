# frozen_string_literal: true

class Task < ApplicationRecord
  belongs_to :user, class_name: "User", foreign_key: "user_id"
  belongs_to :creator, class_name: "User", foreign_key: "creator_id"
  belongs_to :organisation

  validates :user_id, presence: true
  validates :creator_id, presence: true
  validates :organisation_id, presence: true
  validates :subject, length: { minimum: 4, maximum: 128}
  validates :description, length: { maximum: 512 }
  validates :app_created_at, presence: true
  validates :app_expires_at, presence: true, comparison: { more_or_equals_to: :app_created_at }
end
