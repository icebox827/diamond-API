class AddFkPhones < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :phones, :users
  end
end
