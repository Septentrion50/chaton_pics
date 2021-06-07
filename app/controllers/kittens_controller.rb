class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def show
        @kitten = kitten_find
    end

    def new
    end

    def create
        @kitten = Kitten.new(
            name: params[:name],
            description: params[:description],
            price: params[:price]
        )

        if @kitten.save
            flash[:notice] = "Kitten created!"
            redirect_to kitten_path(@kitten.id)
        else
            flash.now[:notice] = "Something went wrong"
            render :new
        end
    end

    def edit
        @kitten = kitten_find
    end

    def update
        @kitten.update(kitten_params)
    end

    def destroy
        @kitten = kitten_find
        @kitten.destroy
    end

    private

    def kitten_find
        Kitten.find(params[:id])
    end

    def kitten_params
        params.permit(:name, :price, :description)
    end
end
