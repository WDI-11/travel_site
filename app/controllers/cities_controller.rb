class CitiesController < ApplicationController
    def index
        @cities= City.all
    end

    def create
        @city = City.create!(city_params)
    end

    private
    def city_params
        params.require(:city).permit(:name, :photo_url)
    end
end
