class CreateLineItems < ActiveRecord::Migration[5.2]
  def change
    create_table :line_items do |t|
      t.integer "quantity"
      t.integer "price"
      t.decimal "total"

      t.timestamps
    end
  end
end
