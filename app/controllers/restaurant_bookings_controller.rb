class RestaurantBookingsController < ApplicationController

  def index
    @restaurant_reservations = RestaurantBooking.all
  end

  def new
    @r_booking = RestaurantBooking.new
    @r_booking.save
  end

  def create
    @booking = RestaurantBooking.new(restaurant_bookings_params)
    # @concierge = current_user
    # @booking.concierge = @concierge.id
    # @restaurant_request = RestaurantBooking.find(params[:restaurant_booking_id])
    # @booking.board = @board
    #saving the booking
    @booking.save
      redirect_to restaurant_bookings_path(@restaurant_bookings)
  end

  def show

  end

  private

  def restaurant_bookings_params
    params.require(:restaurant_booking).permit(:day, :numberofguest, :restaurantname, :guestname, :typeofreservation, :tablebookingtime, :concierge_id)
  end
end
