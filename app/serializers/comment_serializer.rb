class CommentSerializer < ActiveModel::Serializer
  attributes :id, :content, :skate_spot_id, :user_id
  belongs_to :skate_spot
  belongs_to :user
end
