class Event < ActiveRecord::Base
  belongs_to :venue
  has_many :favorites
  has_many :users, through: :favorites

  # validates :seatgeek_id, uniqueness: true
  # validates :title, presence: true
  # validates :datetime_local, presence: true
  # validates :venue_id, presence: true

  def self.generate_list
    seatgeek_response = HTTParty.get("http://api.seatgeek.com/2/events?geoip=50.200.196.50&range=25mi&per_page=1000&type=concert")["events"]
    seatgeek_response.each do |event|
    spotify_response = HTTParty.get("http://ws.spotify.com/search/1/artist.json?q=#{event["performers"].first["name"].gsub(" ", "+").gsub("&", "and")}")

    if spotify_response["artists"] == []
      spotify_url = nil
    else
      spotify_url = spotify_response["artists"][0]["href"]
    end
      new_event = Event.create(
        seatgeek_id: event["id"],
        title: event["title"],
        datetime_local: event["datetime_local"],
        lowest_price: event["lowest_price"],
        popularity: event["score"],
        venue_id: Venue.find_by(seatgeek_id: event["venue"]["id"]).id,
        photo_url: event["performers"].first["image"],
        spotify_url: spotify_url,
        seatgeek_url: event["url"]
      )
    end
  end
end
