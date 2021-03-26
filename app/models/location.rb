class Location < ApplicationRecord

  def self.get_request(latitude, longitude)
    # api = ENV["WEATHER_API_KEY"]
    byebug
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{latitude}&lon=#{longitude}&units=imperial&exclude={part}&appid="
    JSON.parse(RestClient.get(url))
  end

end
