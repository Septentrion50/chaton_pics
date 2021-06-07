class Kitten < ApplicationRecord
  belongs_to :wallet
  has_one_attached :event_picture

end
