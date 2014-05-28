class VenuesController < ApplicationController

  def show
    @venue = Venue.find(params[:id])
    @events = @venue.events.all
  end
end
