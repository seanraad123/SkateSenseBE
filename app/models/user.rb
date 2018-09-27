class User < ApplicationRecord
  has_many :events, through: :skate_spots, dependent: :destroy
  has_many :skate_spots, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :bookmarks, dependent: :destroy
end
