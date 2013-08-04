class CreatePtelActivations < ActiveRecord::Migration
  def change
    create_table :ptel_activations do |t|
      t.string :sim_number
      t.string :zip_code
      t.string :email
      t.string :first_name
      t.string :last_name
      t.string :contact_number
      t.boolean :fourty_plan
      t.boolean :fifty_plan
      t.boolean :real_paygo
      t.integer :paygo_amount
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
