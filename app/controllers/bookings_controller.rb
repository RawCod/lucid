class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @event = Event.find(params[:event_id])
    @user = current_user

  end

  def create
    @booking = Booking.new(booking_params)
    @event = Event.find(params[:event_id])
    @user = current_user
    @booking.event = @event
    @booking.user = @user
    if @booking.save
      redirect_to bookings_path, notice: "Your booking was successful."
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
    params.require(:booking).permit(:user_id, :event_id, :quantity)
  end

end
