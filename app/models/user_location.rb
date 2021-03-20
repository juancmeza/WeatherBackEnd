require_relative '../.apiKey.rb'

class UserLocation < ApplicationRecord

  belongs_to :user

  def self.get_request(latitude, longitude)
    # api = ENV["WEATHER_API_KEY"]
    url = "https://api.openweathermap.org/data/2.5/onecall?lat=#{latitude}&lon=#{longitude}&units=imperial&exclude={part}&appid=#{$api_key}"
    JSON.parse(RestClient.get(url))
  end

end
