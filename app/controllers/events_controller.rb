class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event = Event.find(params[:id])
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    if @event.save
      # redirect_to events_path, notice: "Thanks for your suggestion (:"
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :capacity, :category, :name, :description, :photo)
  end
end
