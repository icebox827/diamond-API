class Profile < ApplicationRecord
  belongs_to :address
  belongs_to :phone
end
