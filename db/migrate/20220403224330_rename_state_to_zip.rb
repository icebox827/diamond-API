class RenameStateToZip < ActiveRecord::Migration[7.0]
  def change
    rename_column :addresses, :state, :zip
  end
end
