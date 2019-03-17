class Worldcup::Player
	attr_accessor :name
    attr_reader :team
	
        @@all_names = []
        	def initialize(name)
        		@name = name
           
        	end



        def self.scrape_create
           @@all_names = []
           #binding.pry
           html_player = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
            player_list = html_player.css(".sortable .nat-fs-player")
            player_list.each do |players|
            #    binding.pry
            new_player = self.new(players.css("a")[1].text)
           #inding.pry
            @@all_names << new_player
        end
       @@all_names
      # binding.pry
   
  end
        
end
#Player.create_player_and_assign
#Player.player_list