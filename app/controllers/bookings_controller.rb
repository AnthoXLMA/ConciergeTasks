class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
    # @user = current_user
    # @my_bookings = @bookings.where(user_id: current_user.id)
  end

  def new
    @restaurant  = Restaurant.find_by(id: params[:restaurant_id])
    @booking = Booking.new
    @booking.save
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def create
    # @user     = current_user
    @restaurant  = Restaurant.find_by(id: params[:restaurant_id])
    @booking  = Booking.new(booking_params)
    # @booking.user = current_user
    flash.alert = "Votre réservation est confirmée"
    if @booking.save
      # mail = BookingMailer.with(booking: @booking).confirmation_booking
      # mail.deliver_now
      # redirect_to booking_path(@booking)
      redirect_to restaurant_path(@restaurant.id)
    end
  end

  def edit
  end

  def update
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.permit(:restaurant_id, :starts_at, :ends_at)
  end
end
