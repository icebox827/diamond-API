class Phone < ApplicationRecord
  # validations
  validates :primary, presence: true, length: { minimum: 6 }

  # Associations
  belongs_to :user, dependent::destroy
end
