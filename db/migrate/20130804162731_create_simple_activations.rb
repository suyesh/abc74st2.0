class CreateSimpleActivations < ActiveRecord::Migration
  def change
    create_table :simple_activations do |t|
      t.string :sim_number
      t.string :zip_code
      t.boolean :twentyfive_plan
      t.boolean :fourty_plan
      t.boolean :fifty_plan
      t.boolean :sixty_plan
      t.boolean :ild
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
