class Profile < ApplicationRecord
  # Validations
  validates :street, presence: true
  validates :city, presence: true, length: { minimum: 2 }
  validates :state, presence: true, length: { minimum: 2 }
  validates :zip, presence: true, length: { minimum: 4, maximum: 18 }
  validates :country, presence: true
  validates :phone, presence: true
  validates :user_id, presence: true

  attr_accessor :user_id
  
  # Associations
  belongs_to :user
end
