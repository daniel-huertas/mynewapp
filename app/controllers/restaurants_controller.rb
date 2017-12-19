class RestaurantsController < ApplicationController

  RESTAURANTS = [
    {name: "3 fois plus de piment", category: "Asian"},
    {name: "Le vieux moulin", category: "French"},
    {name: "bobo", category: "Indian"}

  ]

  def index
    @category = params[:food_type]
    if @category
      @restaurants = RESTAURANTS.select {|r| r[:category] == @category}
    else
      @restaurants = RESTAURANTS
    end
  end

end
