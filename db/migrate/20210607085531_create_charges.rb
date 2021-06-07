class CreateCharges < ActiveRecord::Migration[5.2]
  def change
    create_table :charges do |t|
      t.string :stripe_id
      t.string :token
      t.string :currency
      t.belongs_to :user
      t.timestamps
    end
  end
end
