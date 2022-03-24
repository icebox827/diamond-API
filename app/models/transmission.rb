class Transmission < ApplicationRecord
  # validations
  validates :transmission_type, presence: true
  validates :abbreviation, presence: true

  # associations
  has_many :cars
end
