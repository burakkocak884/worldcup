

 class Worldcup::Team

# Worldcup::Team has a name, many players, and it belongs to a group.

 	 attr_accessor :name, :players
 	 attr_reader :group

 	 @@all_teams =[]
		 
 		#it's name gets initialized
 		#it also has list of players array.

		def initialize(name)
 		  	@name = name
 		  	@players = []
 		end

 		# scrape_create method  scrapes a web page,
	 	# then it initializes each element with new insrtance of the class,
	 	# lastly, it will store it on array of the class.
	 	def self.scrape_create
			@@all_teams = []
			html_team = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
			teams = html_team.css (".toclevel-2 .toctext")
			teams[0..31].each do |team_name|
			team = Worldcup::Team.new(team_name.text)
		    @@all_teams << team
	  		end
		    @@all_teams
	  	end
		  	#players_to_teams method will take list of class instances(players), break them down into 23-indexed sub arrays.
			#Then, it will assign set of 23 players in each team that they belong to.

		def self.players_to_teams
			scrape_create
			list_of_all_players = Worldcup::Player.scrape_create
			chunked_list = list_of_all_players.each_slice(23).to_a
			chunked_list.each_with_index do |each_team_players, index|
			each_team_players.each do |each_player|
			@@all_teams[index].players << each_player
				end
			end
			@@all_teams
			
		end

			# tournament_facts will scrape data from a web page, iterate over the data,
			
			# then return manupulated data which is a list of facts from previous WorldCups. 
		def self.tournament_facts
		 puts "Interesting facts of Fifa WorldCup(s) in the past :"
	        facts = []
	        html_facts = Nokogiri::HTML(open("https://www.roadtrips.com/blog/world-cup-facts/"))
	        tournament_facts = html_facts.css("#post-18975 ul")
			tournament_facts.each do |fact|
			fact.css("li").map do |each_fact|
			puts "==>>   #{each_fact.text}"
			sleep(0.4)
				  end
			 end
		end

		
		
		


		

 end

 
 