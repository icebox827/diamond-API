class Car < ApplicationRecord
  # Validations
  validates :make, presence: true
  validates :model, presence: true
  validates :year, presence: true
  validates :color, presence: true
  validates :seats, presence: true
  validates :user_id, presence: true

  # Associations
  belongs_to :user

  # built-in method to count car
  def self.cars_count
    cars_number = Car.group(:user_id).count
  end
end
