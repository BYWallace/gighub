class Venue < ActiveRecord::Base
  # has_many :events, dependent: :destroy

  # validates :seatgeek_id, presence: true
  # validates :name, presence: true

  def self.generate_list
    response = HTTParty.get("http://api.seatgeek.com/2/venues?geoip=50.200.196.50&range=25mi&per_page=524")["venues"]
    response.each do |venue|
      Venue.create(
      seatgeek_id: venue["id"],
      name: venue["name"],
      address: venue["address"],
      city: venue["city"],
      state: venue["state"],
      postal_code: venue["postal_code"],
      latitude: venue["location"]["lat"],
      longitude: venue["location"]["lon"]
      )
    end
  end

end
