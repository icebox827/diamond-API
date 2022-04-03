class Phone < ApplicationRecord
  # validations
  validates :primary, presence: true, length: { minimum: 6 }
  validates :user_id, presence: true
  
  attr_accesible :user_id

  # Associations
  belongs_to :user, dependent::destroy
end
