class CreatePtelPortins < ActiveRecord::Migration
  def change
    create_table :ptel_portins do |t|
      t.string :existing_number
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip_code
      t.string :email
      t.string :old_service_provider
      t.string :old_account_id
      t.string :old_account_password
      t.boolean :fourtyplan
      t.boolean :fiftyplan
      t.boolean :real_paygo
      t.integer :paygo_amount
      t.text :comments
      t.integer :wallet_id
      t.integer :admin_id

      t.timestamps
    end
  end
end
