class UserSerializer < ActiveModel::Serializer
  attributes :id, :first_name, :last_name, :username, :email
  has_many :skate_spots
  has_many :likes
  has_many :comments
  has_many :bookmarks
end
