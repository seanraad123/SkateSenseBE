class SkateSpotSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :country, :state, :city, :longitude, :latitude, :avatars, :user_id
  belongs_to :user
  has_many :likes
  has_many :comments
  has_many :bookmarks
end
