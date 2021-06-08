class Kitten < ApplicationRecord
  has_one_attached :event_picture
  has_many :join_wallet_items, dependent: :nullify
end
