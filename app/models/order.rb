class Order < ApplicationRecord
  has_many :line_items
  # before_save :set_subtotal

  #def subtotal
  #  line_items.collect{ |line_item| line_item.price * line_item.quantity }.sum
  #end

  private

  def set_subtotal
    self[:subtotal] = subtotal
  end
end
