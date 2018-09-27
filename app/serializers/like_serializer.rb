class LikeSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :skate_spot_id
  belongs_to :skate_spot
  belongs_to :user
end
