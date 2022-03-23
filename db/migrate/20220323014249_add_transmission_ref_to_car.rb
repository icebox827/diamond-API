class AddTransmissionRefToCar < ActiveRecord::Migration[7.0]
  def change
    add_reference :cars, :transmission, null: false, foreign_key: true
  end
end
