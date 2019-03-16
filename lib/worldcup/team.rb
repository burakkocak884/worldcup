  require_relative "./scraper.rb"
 require_relative "./cli.rb/"
   require_relative "./group.rb"
 require_relative "./player.rb/"
 require 'pry'



 class Team


 	 attr_accessor :name, :players
 	 attr_reader :group

 	 @@all_teams =[]
		 


		def initialize(name)
 		  	@name = name
 		  	@players = []
 		  	@@all_teams << self
 		end


	 	def self.create
			
			Scraper.teams_data.each do |each_team|
	  		team = Team.new(each_team)
	  	end
		end
		
		# def self.groups_selector
 		 	
 	# 	 		puts "Please enter a letter to see teams in each group:"
 		 	
 	
		# 		input = gets.strip
 	# 	 		Scraper.groups.each do |key, value|
 	# 	 			 #binding.pry
 		 			 
 	# 	 		if input == key[6] || input == key
 	# 	 		puts value

 	# 	 		end
 	# 	 	end
		# 	end



		# 	def self.team_data_print

  #                counter = 0
		# 		Scraper.teams_data.map do|team|
			
		# 		puts "#{counter += 1}. #{team}"
		# 	end
		# 	puts ""
		# end
		



 end
 # Team.groups
 # Team.groups
 #eam.create
 # Team.team_data_print
 #Team.players_list
 #Team.team_to_group

