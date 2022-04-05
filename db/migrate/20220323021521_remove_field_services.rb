class RemoveFieldServices < ActiveRecord::Migration[7.0]
  def change
    remove_column :services, :user_id
  end
end
