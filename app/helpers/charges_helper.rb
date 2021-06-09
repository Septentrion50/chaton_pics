module ChargesHelper
    def total_charge(order)
        unless order.line_items.length == 0
            total = 0 
            order.line_items.each do |order_item|
                kitten_price = order_item.kitten.price
                total += kitten_price
            end
            return total
        end
    end
end
