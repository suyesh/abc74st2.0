class CreateUltraActivations < ActiveRecord::Migration
  def change
    create_table :ultra_activations do |t|
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
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
