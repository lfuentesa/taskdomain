class RemoveBrokerIdFromRequest < ActiveRecord::Migration
  def change
    remove_column :requests, :broker_id, :integer
  end
end
