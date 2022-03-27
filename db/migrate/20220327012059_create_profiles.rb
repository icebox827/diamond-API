class CreateProfiles < ActiveRecord::Migration[7.0]
  def change
    create_table :profiles do |t|
      t.references :address, null: false, foreign_key: true
      t.references :phone, null: false, foreign_key: true

      t.timestamps
    end
  end
end
