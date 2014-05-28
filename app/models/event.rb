class Event < ActiveRecord::Base
  belongs_to :venue

  # validates :seatgeek_id, uniqueness: true
  # validates :title, presence: true
  # validates :datetime_local, presence: true
  # validates :venue_id, presence: true

  def self.generate_list
    response = HTTParty.get("http://api.seatgeek.com/2/events?geoip=50.200.196.50&range=25mi&per_page=1000&type=concert")["events"]
    response.each do |event|
      new_event = Event.new(
        seatgeek_id: event["id"],
        title: event["title"],
        datetime_local: event["datetime_local"],
        lowest_price: event["lowest_price"],
        popularity: event["score"],
        venue_id: Venue.find_by(seatgeek_id: event["venue"]["id"]).id
      )
      new_event.venue = Venue.find_by(seatgeek_id: event["venue"]["id"]) if event["venue"]
      new_event.save
    end
  end
end
