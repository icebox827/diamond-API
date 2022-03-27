class Profile < ApplicationRecord
  # Validations 
  validates :address_id, presence: true
  validates :phone_id, presence: true
  
  # Associations
  belongs_to :address
  belongs_to :phone
end
