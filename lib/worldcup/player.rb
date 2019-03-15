

  require_relative "./scraper.rb"
 require_relative "./cli.rb/"
   require_relative "./team.rb"
 require_relative "./group.rb/"

 require 'pry'


class Players
	attr_accessor :name, :name
	
@@all_names = []
	def initialize(name)
		@name = name
	end



	def self.create_player
    #binding.pry
    Scraper.players.each do |team_players|
    	team_players.each_with_index do |players, index|
    		
    		binding.pry
    		Team.create[index].player = players
    	end
    end




		



	end
end
#Players.create_player