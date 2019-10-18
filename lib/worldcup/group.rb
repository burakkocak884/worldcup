
class Worldcup::Group

# Worldcup::Group has a name and collection of teams, 32 to be precise

	attr_accessor :name, :teams

		    @@all_groups = []
		    # name of a group is initialized. 
		def initialize(name)
			@name = name
			@teams = []
		end
			 # scrape_create method  scrapes a web page,
			 # then it initializes each element with new instance of the class,
			  # lastly, it will store it in an array of the class.
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

		#team_in_group method will take list of class instances, break them down into four-indexed sub arrays.
		#Then, it will assign set of four teams in each group that they belong to.
		
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
