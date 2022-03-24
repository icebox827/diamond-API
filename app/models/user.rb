class User < ApplicationRecord
  # validations
  has_secure_password

  validates :first_name, presence: true, length: { minimum: 2, maximum: 25 }
  validates :last_name, presence: true, length: { minimum: 2, maximum: 30 }
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates_format_of :email, with: /\A\S+@.+\.\S+\z/
  validates :password, presence: true, length: { minimum: 8 }

  # associations
  belongs_to :address
  has_many :cars
  has_many :phones
  has_many :services, through: :reqeusted_services
end
