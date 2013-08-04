class CreateUltraReups < ActiveRecord::Migration
  def change
    create_table :ultra_reups do |t|
      t.string :phone_number
      t.boolean :nineteen_plan
      t.boolean :twentynine_plan
      t.boolean :thirtynine_plan
      t.boolean :fourtynine_plan
      t.boolean :fiftynine_plan
      t.boolean :other_amount
      t.integer :amount
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
