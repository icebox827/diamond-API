class CreateCars < ActiveRecord::Migration[7.0]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.integer :seats
      t.integer :user_id

      t.timestamps
    end
    add_index :cars, :user_id
  end
end
