class Kitten < ApplicationRecord
  has_one_attached :event_picture
  has_one_attached :picture
end
