

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
                @@all_names << self
        	end



        def self.create_player_and_assign
           
             Scraper.players.each_with_index do |each_team_players, index|
            each_team_players.each do |players|

            		new_player = self.new(players)
                 
           Team.create[index].players << new_player
           
                  end
                end
        end


        # def self.player_list(team_number)
          
         
           
        #     puts "Squad of #{Scraper.teams_data[team_number-1]} :"
        #      puts "Players"
        #     Scraper.players[team_number-1].each do |player|
        #     puts " --> #{player}"

            
        # end
        # end
        def self.all

            @@all_names
        end



    		
    	
    




		




end
#Player.create_player_and_assign
#Player.player_list