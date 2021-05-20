require 'dotenv'
Dotenv.load

class Location < ApplicationRecord

  def self.get_request(latitude, longitude)
    api = ENV["WEATHER_API_KEY"]
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{latitude}&lon=#{longitude}&units=imperial&exclude={part}&appid=#{api}"
    JSON.parse(RestClient.get(url))
  end

end
