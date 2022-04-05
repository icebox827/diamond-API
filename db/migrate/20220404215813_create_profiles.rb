class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.string :street
      t.string :city
      t.string :state
      t.string :zip
      t.string :country
      t.string :phone
      t.integer :user_id

      t.timestamps
    end
    add_index :profiles, :user_id
  end
end
