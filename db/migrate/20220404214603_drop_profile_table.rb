class DropProfileTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :profiles
  end

  def down
    fail ActiveRecord::IrreversibleMigration
  end
end
