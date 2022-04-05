class DropTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :transmissions
  end

  def down
    fail ActiveRecord::IrreversibleMigration 
  end
end
