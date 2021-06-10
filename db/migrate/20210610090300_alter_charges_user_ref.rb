class AlterChargesUserRef < ActiveRecord::Migration[5.2]
  def change
    # remove_column :charges, :user_id
    # remove_column :charges, :order_id

    add_reference :charges, :user_id, index: true
    add_reference :charges, :order_id, index: true
  end
end
