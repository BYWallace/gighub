class WelcomeController < ApplicationController

  def index
    @events = Event.where(datetime_local: (Time.now.midnight..(Time.now.midnight + 7.day)))
  end

end
