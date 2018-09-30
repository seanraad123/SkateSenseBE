class SkateSpot < ApplicationRecord
  mount_uploader :skatephoto, SkatePhotoUploader
  belongs_to :user
  has_many :events, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
  has_many :users, through: :bookmarks
end
