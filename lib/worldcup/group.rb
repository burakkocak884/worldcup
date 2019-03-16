
class Worldcup::Group


	attr_accessor :name, :teams

		    @@all_groups = []

		def initialize(name, teams)
			@name = name
			@teams = teams
		
			@teams = []
			@@all_groups << self
			#binding.pry

		end

	
	 	def self.team_group
			
			Worldcup::Scraper.groups.each do |group|
			 new_group = Worldcup::Group.new(group)
			 #binding.pry
			end
		end
		
		def self.team_in_group
         
         #binding.pry
			  split_teams = Worldcup::Team.create.each_slice(4).to_a
		#	  binding.pry
			  split_teams.each_with_index do |chunk, index|
			  	
			  	chunk.each do |team|
			  		
			  		team = @@all_groups[index].teams
			  		#binding.pry
			  	end
			  end
			  @@all_groups
			  binding.pry
			end
		# def all
		# 	@@all_groups
		# 	# binding.pry
		# end



		

	
	


end

# Group.team_group
# Group.all
# Group.team_in_group