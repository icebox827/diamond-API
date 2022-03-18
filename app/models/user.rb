class User < ApplicationRecord
  # validations
  has_secure_password 

  validates :first_name, presence: true, length: { in 2..25 }
  validates :last_name, presence: true, length: { in 2..25 }
  validates :email, presence: true, uniqueness: { case_sensitive: true }
  validates_format_of :email, with: /\A\S+@.+\.\S+\z/
  validates :password, presence: true, length { in 8..30 }

  # associations
end
