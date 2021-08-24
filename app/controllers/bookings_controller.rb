class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to bookings_path, notice: "Your booking was successful."
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id)
  end

  def index
      @bookings = Booking.all
  end
end
