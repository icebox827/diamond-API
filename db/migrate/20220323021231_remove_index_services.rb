class RemoveIndexServices < ActiveRecord::Migration[7.0]
  def change
    remove_index :services, name: "index_services_on_user_id"
  end
end
