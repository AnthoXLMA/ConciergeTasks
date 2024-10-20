class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @booking = Booking.new
    # @booking.user = current_user
    @booking.save
  end

  private

  def restaurant_params
    params.permit(:restaurant_name)
  end
end
