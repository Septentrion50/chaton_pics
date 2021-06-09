class WalletsController < ApplicationController
    before_action :authenticate_user!

    def index 
        @line_items = current_order.line_items
    end

end
