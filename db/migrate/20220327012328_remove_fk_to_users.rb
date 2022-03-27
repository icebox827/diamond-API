class RemoveFkToUsers < ActiveRecord::Migration[7.0]
  def self.up
    remove_column :users, :address_id
  end
end
