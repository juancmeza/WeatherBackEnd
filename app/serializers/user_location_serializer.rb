class UserLocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :latitude, :longitude
end
