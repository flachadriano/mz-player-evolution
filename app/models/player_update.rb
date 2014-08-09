class PlayerUpdate < ActiveRecord::Base
	belongs_to :player

	validates :player, presence: true

	validates :name, length: {maximum: 255}

	validates :value, :salary, :age, :session,
		numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}

	validates :speed, :stamina, :play_intelligence, :passing, :shooting, :header, :keeping, 
				:ball_control, :tackling, :cross_balls, :set_plays, :experience, :form,
		inclusion: 0..10
end