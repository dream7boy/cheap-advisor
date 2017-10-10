class RestaurantsController < ApplicationController
  # FAKE DB
  RESTAURANTS = [
    { name: "Dishoom", address: "Shoreditch, London", category: "indian" },
    { name: "Sushi Samba", address: "City, London", category: "japanese" }
  ]

  def index
    # @restaurants = Restaurant.all
    @category = params[:category]
    # raise => debugger

    @restaurants = RESTAURANTS
  end

  def create
    raise
    render plain: "Add to DB restaurant '#{params[:name]}' with address '#{params[:address]}'"
  end

  def show
    id = params[:id].to_i
    @restaurant = RESTAURANTS[id]
  end
end
