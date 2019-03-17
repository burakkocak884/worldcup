class Worldcup::Player

 #Worldcup::Player  has a name, and it belongs to a team.

	attr_accessor :name
    attr_reader :team
	
        @@all_names = []
        # name gets initialzed.
        	def initialize(name)
        		@name = name
           
        	end

            # scrape_create method  scrapes a web page, to get 732 names of players from FIFA worldcup 2018
             # then it initializes each name with new instance of the class(player),
             # lastly, it will store it in an array of the class.

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
