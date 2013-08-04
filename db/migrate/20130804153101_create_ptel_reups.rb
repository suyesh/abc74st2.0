class CreatePtelReups < ActiveRecord::Migration
  def change
    create_table :ptel_reups do |t|
      t.string :pone_number
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
