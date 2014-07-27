class User < ActiveRecord::Base
	include ImportMzData

	# Include default devise modules. Others available are: :confirmable, :lockable, :timeoutable and :omniauthable
	devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

	has_many :plyers
end
