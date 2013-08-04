class CreateAdmins < ActiveRecord::Migration
  def change
    create_table :admins do |t|
      t.string :first_name
      t.string :last_name
      t.string :store_number
      t.string :cell_number
      t.string :address
      t.string :city
      t.string :state
      t.string :zip
      t.string :store_name
      t.string :email
      t.string :autorised_person
      t.integer :reup_id
      t.integer :simple_portin_id
      t.integer :simple_activation_id
      t.integer :ultra_reup_id
      t.integer :ultra_portin_id
      t.integer :ultra_activation_id
      t.integer :wallet_id
      t.integer :ptel_reup_id
      t.integer :ptel_portin_id
      t.integer :ptel_activation_id
      t.integer :lyca_activation_id
      t.integer :lyca_portin_id
      t.integer :lyca_reup_id
      t.integer :tmobile_activation_id
      t.integer :tmobile_portin_id
      t.integer :tmobile_reup_id
      t.integer :h20_activation_id
      t.integer :h20_portin_id
      t.integer :h20_reup_id
      t.integer :international_recharge_id
      t.integer :cellphone_unlocking_id

      t.timestamps
    end
  end
end


                    

  

  

  
  

  

  

  

  

  

