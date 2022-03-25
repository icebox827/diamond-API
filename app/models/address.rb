class Address < ApplicationRecord
  # validations
  validates :street, presence: true
  validates :state, presence: true, length: { minimum: 2, maximum: 35 }
  validates :country, presence: true, length: { minimum: 2, maximum: 40 }

  # Associations
  has_many :users
end
