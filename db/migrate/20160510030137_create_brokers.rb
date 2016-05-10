class CreateBrokers < ActiveRecord::Migration
  def change
    create_table :brokers do |t|
      t.string :broker_company_name

      t.timestamps null: false
    end
  end
end
