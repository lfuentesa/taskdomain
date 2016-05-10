class RemoveLogFromRequest < ActiveRecord::Migration
  def change
    remove_column :requests, :request_log, :integer
  end
end
