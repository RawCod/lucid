class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
    @user = User.find(params[:user_id])

  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to event_booking_path(@booking), notice: "Your booking was successful."
    else
      render :new
    end
  end

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :event_id)
  end

end
