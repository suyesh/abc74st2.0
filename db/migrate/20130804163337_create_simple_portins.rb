class CreateSimplePortins < ActiveRecord::Migration
  def change
    create_table :simple_portins do |t|
      t.string :sim_number
      t.string :existing_phone
      t.string :zip_code
      t.string :current_service_provider
      t.string :old_account_number
      t.string :old_account_password
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.boolean :twentyfive_plan
      t.boolean :fourty_plan
      t.boolean :fifty_plan
      t.boolean :sixty_plan
      t.boolean :seventy_plan
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
