class CreateWallets < ActiveRecord::Migration
  def change
    create_table :wallets do |t|
      t.integer :balance
      t.integer :refunds
      t.integer :income_from_activations
      t.integer :income_from_reup
      t.integer :income_from_international_recharge
      t.integer :unlocking
      t.integer :admin_id
      t.integer :ptel_activation_id
      t.integer :ptel_portin_id
      t.integer :ptel_reup_id
      t.integer :ultra_activation_id
      t.integer :ultra_portin_id
      t.integer :ultra_reup_id
      t.integer :simple_activation_id
      t.integer :simple_portin_id
      t.integer :simple_reup_id
      t.integer :lyca_activation_id
      t.integer :lyca_portin_id
      t.integer :lyca_reup_id
      t.integer :h20_activation_id
      t.integer :h20_portin_id
      t.integer :h20_reup_id
      t.integer :tmobile_activation_id
      t.integer :tmobile_portin_id
      t.integer :tmobile_reup_id
      t.integer :unlocking_id

      t.timestamps
    end
  end
end
