class CreateJoinWalletItems < ActiveRecord::Migration[5.2]
  def change
    create_table :join_wallet_items do |t|
      t.belongs_to :wallet, foreign_key: true
      t.belongs_to :kitten, foreign_key: true
      t.integer :quantity

      t.timestamps
    end
  end
end
