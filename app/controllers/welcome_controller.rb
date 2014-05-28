class WelcomeController < ApplicationController

  def index
    @events = Event.where(datetime_local: (Time.now.midnight..(Time.now.midnight + 90.day)))
    @events_grouped = @events.group_by { |event| event.datetime_local.strftime("%A, %B #{event.datetime_local.day.ordinalize}") }

  end

def archive

end

end
