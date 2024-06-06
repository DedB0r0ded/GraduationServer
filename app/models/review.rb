# frozen_string_literal: true

class Review < ApplicationRecord
  belongs_to :user
  belongs_to :facility

  validates :app_created_at, :subject, :user_id, :facility_id, presence: true
  validates :subject, length: { maximum: 64 }
  validates :body, length: { minimum: 10, maximum: 512 }
end
