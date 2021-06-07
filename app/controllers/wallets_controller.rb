class WalletsController < ApplicationController
    def show
        @wallet = wallet_find
    end

    def new
    end

    def create
        @wallet = Wallet.new(
            amount: params[:amount],
            quantity: params[:quantity]
        )

        if @wallet.save
            flash[:notice] = "Your basket has been created"
            redirect_to wallet_path(@wallet.id)
        else
            flash.now[:notice] = "A problem occured"
            render :new
        end
    end

    def edit
        @wallet = wallet_find
    end

    def update
        @wallet = wallet_find
        @wallet.update(wallet_params)
    end

    private

    def wallet_find
        Wallet.find(params[:id])
    end

    def wallet_params
        params.permit(:amount, :quantity)
    end
end
