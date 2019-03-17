
class Worldcup::Group



	attr_accessor :name, :teams

		    @@all_groups = []

		def initialize(name)
			@name = name
			@teams = []
			
       			

		end

	
	 	def self.scrape_create
			
			@@all_groups = []
			html_groups = Nokogiri::HTML(open("https://www.fifa.com/worldcup/groups/"))
		 	groups = html_groups.css(".fi-pageheader")
			indiv_group = groups.css("span")
		 	indiv_group.each do |group|
			new_group = self.new(group.text)
			@@all_groups << new_group
				end
			@@all_groups
		end
		
		def self.team_in_group
            scrape_create
     		split_teams = Worldcup::Team.players_to_teams.each_slice(4).to_a
		 	split_teams.each_with_index do |chunk, index|
		    chunk.each do |each_team|
		    @@all_groups[index].teams << each_team
			  	end
			  end
			  @@all_groups
			
			end
		

end
