class RenameBuildingToCity < ActiveRecord::Migration[7.0]
  def change
    rename_column :addresses, :building, :city
  end
end
