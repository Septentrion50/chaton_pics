class AlterCharges < ActiveRecord::Migration[5.2]
  def change
    remove_column :charges, :token
    remove_column :charges, :currency
    remove_column :charges, :wallet_id
    remove_column :charges, :user_id

    # add_reference :charges, :user, foreign_key: true
    # add_reference :charges, :order, foreign_key: true
  end
end
