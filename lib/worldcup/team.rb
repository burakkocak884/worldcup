

 class Worldcup::Team


 	 attr_accessor :name, :players
 	 attr_reader :group

 	 @@all_teams =[]
		 


		def initialize(name)
 		  	@name = name
 		  	@players = []
 		  
 		  #	binding.pry
 		end


	 	def self.scrape_create
			@@all_teams = []
			html_team = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
			teams = html_team.css (".toclevel-2 .toctext")
			#binding.pry
			teams[0..31].each do |team_name|
				#binding.pry
		    team = Worldcup::Team.new(team_name.text)
		   # binding.pry
	  		@@all_teams << team
	  		
	  	end
	 @@all_teams
	  	#binding.pry
		end

		def self.players_to_teams
			scrape_create
			list_of_all_players = Worldcup::Player.scrape_create
			#binding.pry
			chunked_list = list_of_all_players.each_slice(23).to_a
			#binding.pry
		
			chunked_list.each_with_index do |each_team_players, index|
			#		binding.pry
				each_team_players.each do |each_player|
			#		binding.pry
					@@all_teams[index].players << each_player
			#		binding.pry
				end
			end
			@@all_teams
			#binding.pry




		end
		
		
		


		

 end

 
 