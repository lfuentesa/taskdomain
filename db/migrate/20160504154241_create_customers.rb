class CreateCustomers < ActiveRecord::Migration
  def change
    create_table :customers do |t|
      t.string :customer_name
      t.string :customer_lastname
      t.string :customer_email
      t.string :customer_phone

      t.timestamps null: false
    end
  end
end
