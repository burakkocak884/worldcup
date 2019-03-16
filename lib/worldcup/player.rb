class Worldcup::Player
	attr_accessor :name
    attr_reader :team
	
        @@all_names = []
        	def initialize(name)
        		@name = name
                @@all_names << self
        	end



        def self.create_player_and_assign
           
            WorldCup::Scraper.players.each_with_index do |each_team_players, index|
            each_team_players.each do |players|
            new_player = self.new(players)
            Worldcup::Team.create[index].players << new_player
           
             end
           end
        end
        
end
#Player.create_player_and_assign
#Player.player_list