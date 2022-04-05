class RemoveFieldTransmission < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :transmissions, :car_id
  end
end
