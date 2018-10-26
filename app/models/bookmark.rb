class Bookmark < ApplicationRecord
  belongs_to :user, required: true
  belongs_to :skate_spot
end
