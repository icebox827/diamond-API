class RenameStreetToState < ActiveRecord::Migration[7.0]
  def change
    rename_column :addresses, :street, :state
  end
end
