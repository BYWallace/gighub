class WelcomeController < ApplicationController

  def index
    @events = Event.where(datetime_local: (Time.now.midnight..(Time.now.midnight + 7.day)))
    @event_days = @events.group_by { |event| event.datetime_local.yday }
  end

def archive

end

end
