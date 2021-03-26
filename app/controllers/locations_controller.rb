class LocationsController < ApplicationController

  def index
    byebug
    lat_long = Geocoder.search(params[:name])
    longitude = lat_long[0].data["lon"]
    latitude = lat_long[0].data["lat"]
    
    response = Location.get_request(latitude, longitude)
    render json: {lmao: response}
  end

end
