class CreateTransmissions < ActiveRecord::Migration[7.0]
  def change
    create_table :transmissions do |t|
      t.string :transmission_type
      t.string :abbreviation
      t.integer :car_id

      t.timestamps
    end
    add_index :transmissions, :car_id
  end
end
