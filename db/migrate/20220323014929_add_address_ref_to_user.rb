class AddAddressRefToUser < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :address, null: true, foreign_key: true
  end
end
