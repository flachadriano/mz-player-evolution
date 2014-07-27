class PlayerData < ActiveRecord::Base
	belongs_to :player

	validates :player,		presence: true

	validates :value,		numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}
	validates :salary,		numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}
	validates :age,			numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}
	validates :session,		numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}

	validates :speed,		inclusion: 1..10
	validates :stamina,		inclusion: 1..10
	validates :play,		inclusion: 1..10
	validates :passing,		inclusion: 1..10
	validates :shooting,	inclusion: 1..10
	validates :shooting,	inclusion: 1..10
	validates :header,		inclusion: 1..10
	validates :keeping,		inclusion: 1..10
	validates :ball,		inclusion: 1..10
	validates :tackling,	inclusion: 1..10
	validates :cross,		inclusion: 1..10
	validates :set,			inclusion: 1..10
	validates :experience,	inclusion: 1..10
	validates :form,		inclusion: 1..10
end
