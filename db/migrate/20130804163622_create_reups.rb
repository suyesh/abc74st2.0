class CreateReups < ActiveRecord::Migration
  def change
    create_table :reups do |t|
      t.string :phone_number
      t.boolean :twentyfive_plan
      t.boolean :fourty_plan
      t.boolean :fifty_plan
      t.boolean :sixty_plan
      t.boolean :seventy_plan
      t.boolean :change_plan
      t.integer :admin_id
      t.integer :wallet_id

      t.timestamps
    end
  end
end
