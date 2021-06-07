class AddImageurlToKitten < ActiveRecord::Migration[5.2]
  def change
    add_column :kittens, :image_url, :string
  end
end
