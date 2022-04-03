class RemoveFkToCars < ActiveRecord::Migration[7.0]
  def self.up
    remove_index :cars, name: :index_cars_on_transmission_id
  end
end
