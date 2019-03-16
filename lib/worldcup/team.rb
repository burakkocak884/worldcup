 #  require_relative "./scraper.rb"
 # require_relative "./cli.rb/"
 #   require_relative "./group.rb"
 # require_relative "./player.rb/"
 require 'pry'



 class Worldcup::Team


 	 attr_accessor :name, :players
 	 attr_reader :group

 	 @@all_teams =[]
		 


		def initialize(name)
 		  	@name = name
 		  	@players = []
 		  	@@all_teams << self
 		  #	binding.pry
 		end


	 	def self.create
			
			Worldcup::Scraper.teams_data.each do |each_team|
	  		team = Worldcup::Team.new(each_team)
	  		#binding.pry
	  	end
		end
		def self.all 
		@@all_teams
			#binding.pry
		end
		


		

 end
  # Team.create
  # Team.all

 
 