class CreateUltraPortins < ActiveRecord::Migration
  def change
    create_table :ultra_portins do |t|
      t.string :sim_number
      t.string :zip_code
      t.boolean :ninteen_plan
      t.boolean :twentynine_plan
      t.boolean :tirtynine_plan
      t.boolean :fortynine_plan
      t.boolean :fiftynine_plan
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :old_number
      t.string :account_no
      t.string :zip_code
      t.string :old_password
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
