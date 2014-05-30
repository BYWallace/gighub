class EventsController < ApplicationController

  def index
    @events = current_user.events.includes(:venue)
    @events_grouped = @events.group_by { |event| event.datetime_local.strftime("%A, %B #{event.datetime_local.day.ordinalize}") }
  end

end
