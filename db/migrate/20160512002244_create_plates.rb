class CreatePlates < ActiveRecord::Migration
  def change
    create_table :plates do |t|
      t.string :plate_number
      t.string :plate_description
      t.belongs_to :broker, index: true
      t.timestamps null: false
    end
  end
end
