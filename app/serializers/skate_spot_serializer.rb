class SkateSpotSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :country, :state, :city, :longitude, :latitude, :skatephoto, :user_id
  belongs_to :user
end
