class RenameAppatementToCity < ActiveRecord::Migration[7.0]
  def change
    rename_column :addresses, :apartement, :city
  end
end
