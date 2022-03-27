class Profile < ApplicationRecord
  # Associations
  belongs_to :address
  belongs_to :phone
end
