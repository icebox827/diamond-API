class DropTablePhones < ActiveRecord::Migration[7.0]
  def up
    drop_table :phones
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
