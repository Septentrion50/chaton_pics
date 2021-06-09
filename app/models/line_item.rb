class LineItem < ApplicationRecord
    belongs_to :order
    belongs_to :product

    before_save :set_price
    before_save :set_total

    def price
        if persisted?
            self[:price]
        else
            kitten.price
        end
    end

    def total
        price * quantity
    end

    private

    def set_price
        self[:price] = price
    end

    def set_total
        self[:total] = total * quantity
    end
end
