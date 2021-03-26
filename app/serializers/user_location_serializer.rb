class UserLocationSerializer < ActiveModel::Serializer
  attributes :id, :city, :latitude, :longitude
  belongs_to :user
end
