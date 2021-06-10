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
        @kitten = Kitten.new(
            name: params[:name],
            description: params[:description],
            price: params[:price]
        )

        if @kitten.save && params[:picture]
            flash[:notice] = "Carte chaton créée !"
            @kitten.picture.attach(params[:picture]) #attribution de la photo à kitten
            redirect_to kittens_path
        else
            flash.now[:notice] = "Ouppps !"
            render :new
        end
    end

    def edit
        @kitten = kitten_find
    end

    def update
        @kitten = kitten_find
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
        params.permit(:name, :price, :description, :picture)
    end
end
