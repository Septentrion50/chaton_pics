class CreateKittens < ActiveRecord::Migration[5.2]
  def change
    create_table :kittens do |t|
      t.float :price
      t.text :description
      t.string :name
      t.timestamps
    end
  end
end
