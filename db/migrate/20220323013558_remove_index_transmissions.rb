class RemoveIndexTransmissions < ActiveRecord::Migration[7.0]
  def change
    remove_index :transmissions, name: "index_transmissions_on_car_id"
  end
end
