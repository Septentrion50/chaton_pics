class AlterChargesUserRefRename < ActiveRecord::Migration[5.2]
  def change
    rename_column :charges, :user_id_id, :user_id
    rename_column :charges, :order_id_id, :order_id
  end
end
