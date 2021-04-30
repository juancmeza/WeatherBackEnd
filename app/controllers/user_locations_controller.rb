class UserLocationsController < ApplicationController

  def index
      user_locations = UserLocation.all
      render json: user_locations
  end
  
  def show
      user_location = UserLocation.find_by(id: params[:id])
      render json: user_location
  end

  def create
      user_location = UserLocation.create(city: params[:user_location][:city], latitude: params[:user_location][:latitude], longitude: params[:user_location][:longitude], user_id: params[:user_location][:user_id])
      render json: user_location
  end

  # def update
  #     user_location = UserLocation.find_by(id: params[:id])
  #     user_location.update(default: user_location.default)
  #     render json: user_location
  # end

  def destroy
      user_location = UserLocation.find_by(id: params[:id])
      user_location.destroy
  end

  def render_request
      # byebug
      # lat_long = Geocoder.search(params[:name])
      # longitude = lat_long[0].data["lon"]
      # latitude = lat_long[0].data["lat"]
      
      response = UserLocation.get_request(params[:latitude], params[:longitude])
      render json: {lmao: response}
  end    


  private

  def user_location_params
      params.require(:user_location).permit(:city, :latitude, :longitude, user_id)
  end

end
