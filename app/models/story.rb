class Story < ApplicationRecord

  validates :title, presence: true, length: { in: 1..50 }
  validates :user_id, numericality: true
	has_many :notes, dependent: :destroy
	belongs_to :user
	
end
