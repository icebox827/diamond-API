class Address < ApplicationRecord
  # validations
  validates :street, presence: true
  validates :city, presence: true
  validates :state, presence: true, length: { minimum: 2, maximum: 35 }
  validates :zip, presence: true
  validates :country, presence: true, length: { minimum: 2, maximum: 40 }
  validates :user_id, presence: true

  # Associations
  belongs_to :user
end
