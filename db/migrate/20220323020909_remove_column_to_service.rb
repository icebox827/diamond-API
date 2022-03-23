class RemoveColumnToService < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :car_quantity
  end
end
