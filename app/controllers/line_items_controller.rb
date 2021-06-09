class LineItemsController < ApplicationController
    before_action :authenticate_user!

    def create
        @order = current_order
        @line_item = @order.line_items.new(order_params)
        @order.save
        session[:order_id] = @order.id
    end

    def update
        @order = current_order
        @line_item = @order.line_items.find(params[:id])
        @line_item.update_attributes(order_params)
        @line_items = current_order.line_items
    end

    def destroy
        @order = current_order
        @line_item = @order.line_items.find(params[:id])
        @line_item.destroy
        @line_items = current_order.line_items
    end

    private

    def order_params
        params.require(:line_item).permit(:kitten_id, :quantity)
    end
end
