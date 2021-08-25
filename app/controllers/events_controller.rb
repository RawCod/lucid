class EventsController < ApplicationController
  def index
    @events = Event.all
  end

  def show
    @event
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    if @event.save
      redirect_to events_path, notice: "Your event was created successfully."
    else
      render :new
    end
  end

  private

  def event_params
    params.require(:event).permit(:location, :capacity, :category, :name, :description, :photo)
  end
end
