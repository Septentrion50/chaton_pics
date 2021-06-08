class Wallet < ApplicationRecord
  has_many :kittens
  has_many :join_wallet_items, dependent: :destroy
end
