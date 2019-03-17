class Worldcup::Player
	attr_accessor :name
    attr_reader :team
	
        @@all_names = []
        	def initialize(name)
        		@name = name
           
        	end



        def self.scrape_create
            @@all_names = []
            html_player = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
            player_list = html_player.css(".sortable .nat-fs-player")
            player_list.each do |players|
            new_player = self.new(players.css("a")[1].text)
            @@all_names << new_player
             end
            @@all_names
        end
        
end
