class KittensController < ApplicationController
    def index
        @kittens = Kitten.all
    end

    def show
        flash[:notice] = "Photo chargée"
        @kitten = kitten_find
    end

    def new
        @kitten = Kitten.new
    end

    def create
    end

    def edit
        @kitten = kitten_find
    end

    def update
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
        params.permit(:name, :price, :description, :picture)
    end
end
