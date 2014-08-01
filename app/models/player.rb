class Player < ActiveRecord::Base
	has_many :player_data, class_name: 'PlayerData'

	belongs_to :user

	validates :user,	presence: true

	validates :number,	numericality: {greather_than_or_equal_to: 0, less_than: 2 ** 32, only_integer: true}
	validates :name,	presence: true, length: {maximum: 255}

	def attributes; @last_update ||= self.player_data.last; end
end
