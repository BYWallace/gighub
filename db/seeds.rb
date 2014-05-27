# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

response = HTTParty.get("http://api.seatgeek.com/2/venues?geoip=50.200.196.50&range=25mi&per_page=524")["venues"]
binding.pry
response.each |venue| do
      new_venue = Venue.new
      new_venue.seatgeek_id = venue["id"]
      new_venue.name = venue["name"]
      new_venue.address = venue["address"]
      new_venue.city = venue["city"]
      new_venue.state = venue["state"]
      new_venue.postal_code = venue["postal_code"]
      new_venue.latitude = venue["location"]["lat"]
      new_venue.longitude = venue["location"]["lon"]
      new_venue.save
    end
