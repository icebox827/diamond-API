class CreatePhones < ActiveRecord::Migration[7.0]
  def change
    create_table :phones do |t|
      t.string :primary
      t.string :home
      t.string :work
      t.integer :user_id

      t.timestamps
    end
    add_index :phones, :user_id
  end
end
