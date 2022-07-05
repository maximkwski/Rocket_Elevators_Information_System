class CreateBuildings < ActiveRecord::Migration[5.2]
  def change
    create_table :buildings do |t|
      t.references :customer, null: false, foreign_key: true
      # customer address
      # t.integer :customer_id
      t.string :address
      t.string :building_admin_name
      t.string :building_admin_email
      t.integer :building_admin_phone
      t.string :building_tech_name
      t.string :building_tech_email
      t.integer :building_tech_phone
      t.timestamps
    end
  end
end
