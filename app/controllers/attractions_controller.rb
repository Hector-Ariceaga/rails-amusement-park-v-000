class AttractionsController < ApplicationController
    def index
        @attractions = Attraction.all
    end

    def show
        @attraction = Attraction.find_by(id: params[:id])
    end

    def new
      @attraction = Attraction.new
    end

    def create
      @attraction = Attraction.new(attraction_params)

      if @attraction.save
        redirect_to attraction_path(@attraction)
      else
        render 'new'
      end
    end

    private

    def attraction_params
      params.require(:attraction).permit()
    end
end
