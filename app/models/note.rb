class Note < ApplicationRecord

  validates :user_id, numericality: true
  validates :story_id, numericality: true
	belongs_to :story
	belongs_to :user
	
end
