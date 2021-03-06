class CitiesController < ApplicationController
  def index
    @cities = City.all
  end

  def show
    city_id = params[:id]
    @city = City.find_by_id(city_id)
  end

  def new
    @city = City.new
  end

  def create
    city_params = params.require(:city).permit(:name, :location)
    city = City.new(city_params)
    if city.save
      redirect_to cities_path(city)
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
