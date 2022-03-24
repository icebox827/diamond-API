class Service < ApplicationRecord
  # validations
  validates :service, presence: true

  # Associations
  has_many :users, through: :reqeusted_services
end
