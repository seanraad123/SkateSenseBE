class Comment < ApplicationRecord
  belongs_to :skate_spot
  belongs_to :user
end
