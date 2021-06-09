class ChangeKittenPriceToInteger < ActiveRecord::Migration[5.2]
  def change
    change_column :kittens, :price, :integer
  end
end
