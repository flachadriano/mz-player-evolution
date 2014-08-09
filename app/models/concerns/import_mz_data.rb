module ImportMzData
	def import name, data
		data.split("\r\n").each do |player_data|
			attributes_data = player_data.split("\t")

			player		= self.players.find_by(number: attributes_data[0], name: attributes_data[1])
			player	  ||= self.players.find_by(name: attributes_data[1])
			player	  ||= self.players.build
			attributes	= player.player_updates.build

			player.number	= attributes_data[0]
			player.name		= attributes_data[1]

			attributes.name		= name

			attributes.value	= attributes_data[2].gsub(' ', '').to_i
			attributes.salary	= attributes_data[3].gsub(' ', '').to_i
			attributes.age		= attributes_data[4]
			attributes.session	= attributes_data[5]

			attributes.speed			= attributes_data[8]
			attributes.stamina			= attributes_data[9]
			attributes.play_intelligence= attributes_data[10]
			attributes.passing			= attributes_data[11]
			attributes.shooting			= attributes_data[12]
			attributes.header			= attributes_data[13]
			attributes.keeping			= attributes_data[14]
			attributes.ball_control		= attributes_data[15]
			attributes.tackling			= attributes_data[16]
			attributes.cross_balls		= attributes_data[17]
			attributes.set_plays		= attributes_data[18]
			attributes.experience		= attributes_data[19]
			attributes.form				= attributes_data[20]

			player.save!

		end
	end
end