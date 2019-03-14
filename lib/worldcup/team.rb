  require_relative "./scraper.rb"
 require_relative "./cli.rb/"
 require 'pry'



 class Team


 	 attr_accessor :name,:group, :coach, :players, :language, :starting11, :jersey_color
# #puts "hello team"
 	 @@all_teams =[]
		 
# 	 	def message
# puts "hello team"
# 	 	end


		  def initialize(name)
 		  	@name = name
 		  	#binding.pry
		  end


		  def self.create
				
				Scraper.teams_data.each do |each_team|
		  		team = Team.new(each_team)
		 		@@all_teams << team
		  end
				 @@all_teams
		  end

		 


		



		  # def self.list_teams
		  # 	#binding.pry
		  # 	puts "hello"
		  #  end


 		 def self.groups_selector
 		 	
 		 		puts "Please enter a letter to see teams in each group:"
 		 	
 		 #binding.pry
				input = gets.strip
 		 		Scraper.groups.each do |key, value|
 		 			 #binding.pry
 		 			 
 		 		if input == key[6] || input == key
 		 		puts value

 		 		end
 		 	end
			end



			def self.team_data_print

                 counter = 0
				Scraper.teams_data.map do|team|
				#binding.pry
				puts "#{counter += 1}. #{team}"
			end
			puts ""
		end
 # def self.player
 # puts "hello player"
 # team1 = self.new
 # binding.pry
 # end


 end
 # Team.groups
 # Team.groups
 # Team.create
 # Team.team_data_print

