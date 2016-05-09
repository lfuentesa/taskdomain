class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :request_creator
      t.integer :request_insurance_broker
      t.integer :request_license_plage
      t.integer :request_insurance_policy

      t.timestamps null: false
    end
  end
end
