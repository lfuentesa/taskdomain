class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :request_creator
      t.integer :request_insurance_broker
      t.integer :request_license_plate
      t.integer :request_claim_number
      t.date :request_sinister_date
      t.date :request_trial_date
      t.integer :request_format_number
      t.integer :request_process_type
      t.integer :request_district
      t.integer :request_office
      t.integer :request_claimant
      t.integer :request_log
      t.boolean :request_isactive
      t.timestamps null: false
    end
  end
end
