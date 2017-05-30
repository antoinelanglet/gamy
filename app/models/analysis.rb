class Analysis < ApplicationRecord
  belongs_to :user
  has_one :video_game
end
