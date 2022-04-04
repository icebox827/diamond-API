class DropTableAddress < ActiveRecord::Migration[7.0]
  def up
    drop_table :addresses
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
