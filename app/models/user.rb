class User < ApplicationRecord
  has_secure_password
  validates :username, presence: true
  validates :username, uniqueness: { case_sensitive: false }
  validates :password, length: { in: 6..20,
    too_short: "6 characters is the minimum allowed" }
  validates :password, presence: true

  has_many :bookmarks, dependent: :destroy
  has_many :skate_spots, dependent: :destroy
  has_many :skate_spots, through: :bookmarks, dependent: :destroy
  has_many :likes, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :events, through: :skate_spots, dependent: :destroy
end
