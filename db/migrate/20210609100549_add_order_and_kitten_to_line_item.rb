class AddOrderAndKittenToLineItem < ActiveRecord::Migration[5.2]
  def change
    add_reference :line_items, :order, index: true
    add_reference :line_items, :kitten, index: true
  end
end
