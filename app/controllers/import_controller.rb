class ImportController < ApplicationController
	def new
	end

	def import_data
		if current_user.import(params[:data])
			redirect_to players_path, notice: ''
		else
			redirect_to new_import_path, notice: ''
		end
	end
end
