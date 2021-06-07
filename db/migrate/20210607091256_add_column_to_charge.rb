class AddColumnToCharge < ActiveRecord::Migration[5.2]
  def change
    add_reference :charges, :wallet, index: true

  end
end
