class CreateWallets < ActiveRecord::Migration[5.2]
  def change
    create_table :wallets do |t|
      t.float :amount

      t.timestamps
    end
  end
end
