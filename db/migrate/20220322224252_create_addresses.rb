class CreateAddresses < ActiveRecord::Migration[7.0]
  def change
    create_table :addresses do |t|
      t.string :apartement
      t.string :building
      t.string :street
      t.string :state
      t.string :country

      t.timestamps
    end
  end
end
