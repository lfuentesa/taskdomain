class FixColumnNameForBroker < ActiveRecord::Migration
  def change
  	rename_column :requests, :request_insurance_broker, :broker_id
  end
end
