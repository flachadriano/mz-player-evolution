class PlayersController < ApplicationController
	before_action :set_player, only: [:show]

	# GET /players
	# GET /players.json
	def index
		@players = current_user.players
	end

	# GET /players/1
	# GET /players/1.json
	def show
	end

	private

	# Use callbacks to share common setup or constraints between actions.
	def set_player
		@player = current_user.players.find(params[:id])
	end
end
