class SpicesController < ApplicationController

    def index
        spices = Spice.all
        render json: spices
    end

    # def show
    #     spice = Spice.all.find(params[:id])
    #     render json: spice, status: :not_found
    # end

    def create
        spice = Spice.create(spice_params)
        render json: spice, status: :created
    end

    def update
        spice = Spice.all.find_by(id: params[:id])
        spice.update(spice_params)
        render json: spice
    end

    def destroy
        spice = Spice.all.find_by(id: params[:id])
        spice.destroy
        head :no_content
    end

    private

    def spice_params
        params.permit(:title, :image, :description, :notes, :rating)
    end

end
