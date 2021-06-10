class LineItemsController < ApplicationController

    def create
        @order = current_order
        @line_item = @order.line_items.new(order_params)
        if @order.save
            session[:order_id] = @order.id
            redirect_to root_path
        else
            puts @order.errors.messages
            redirect_to root_path
        end
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
        redirect_to wallets_path
    end

    private

    def order_params
        params.permit(:kitten_id, :quantity)
    end
end
