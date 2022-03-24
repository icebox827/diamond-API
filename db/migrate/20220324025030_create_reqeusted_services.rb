class CreateReqeustedServices < ActiveRecord::Migration[7.0]
  def change
    create_table :reqeusted_services do |t|
      t.integer :user_id
      t.integer :service_id

      t.timestamps
    end
    add_index :reqeusted_services, :user_id
    add_index :reqeusted_services, :service_id
  end
end
