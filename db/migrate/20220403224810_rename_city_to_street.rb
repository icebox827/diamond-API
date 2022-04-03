class RenameCityToStreet < ActiveRecord::Migration[7.0]
  def change
    rename_column :addresses, :city, :street
  end
end
