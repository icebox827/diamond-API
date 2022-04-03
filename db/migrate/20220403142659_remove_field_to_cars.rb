class RemoveFieldToCars < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :cars, :transmission_id
  end
end
