

 class Worldcup::Team


 	 attr_accessor :name, :players
 	 attr_reader :group

 	 @@all_teams =[]
		 


		def initialize(name)
 		  	@name = name
 		  	@players = []
 		  
 		  #	binding.pry
 		end


	 	def self.create
			
			Worldcup::Scraper.teams_data.each do |each_team|
	  		team = Worldcup::Team.new(each_team)
	  		@@all_teams << team
	  		
	  	end
	  	#binding.pry
		end
		def self.all 
		create
		
		end
		
		


		

 end

 
 