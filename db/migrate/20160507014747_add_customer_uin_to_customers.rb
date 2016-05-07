class AddCustomerUinToCustomers < ActiveRecord::Migration
  def change
    add_column :customers, :customer_uin, :string
  end
end
