class ReqeustedService < ApplicationRecord
  # validations
  validates :user_id, presence: true
  validates :service_id, presence: true
  
  # Associations
  belongs_to :User
  belongs_to :service
end
