class PlayersController < ApplicationController

	def index
		@players = current_user.players
	end

	def show
		@players = current_user.players
		@player = @players.find(params[:id])
	end

end