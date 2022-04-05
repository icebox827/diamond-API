class AddFkCars < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :cars, :users
  end
end
