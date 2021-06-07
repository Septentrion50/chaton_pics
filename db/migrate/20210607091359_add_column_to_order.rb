class AddColumnToOrder < ActiveRecord::Migration[5.2]
  def change
    add_reference :orders, :wallet, index: true
    add_reference :orders, :charge, index: true

  end
end
