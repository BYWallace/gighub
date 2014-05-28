class VenuesController < ApplicationController

  def show
    @venue = Venue.find(params[:id])
    @events = @venue.events.all
    @events_grouped = @events.group_by { |event| event.datetime_local.strftime("%A, %B #{event.datetime_local.day.ordinalize}") }
  end
end
