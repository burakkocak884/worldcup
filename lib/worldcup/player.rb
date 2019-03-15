

  require_relative "./scraper.rb"
 require_relative "./cli.rb/"
   require_relative "./team.rb"
 require_relative "./group.rb/"

 require 'pry'


class Player
	attr_accessor :name
    attr_reader :team
	
@@all_names = []
	def initialize(name)
		@name = name
	end



	def self.create_player_and_assign
     puts "Be patient, this may take a few seconds..."
     Scraper.players.each_with_index do |each_team_players, index|
     #binding.pry
    	each_team_players.each do |players|
    		#binding.pry
    		new_player = self.new(players)
    #binding.pry
            Team.create[index].players << new_player
      #binding.pry       
         end
         #binding.pry
     end
    # binding.pry
 end
 def self.player_list
  counter = 0
    
#binding.pry
    Team.create[0].players.each do |player|

        #binding.pry
        puts " hello #{counter} "
        counter += 1
end
end



    		
    	
    




		




end
#Player.create_player_and_assign
Player.player_list