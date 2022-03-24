class AddFkToRequestedService < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :reqeusted_services, :users
    add_foreign_key :reqeusted_services, :services
  end
end
