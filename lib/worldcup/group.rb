
class Worldcup::Group



	attr_accessor :name, :teams

		    @@all_groups = []

		def initialize(name)
			@name = name
			@teams = []
			
       			

		end

	
	 	def self.team_group
			#binding.pry
			group_list = Worldcup::Scraper.groups

			@@all_groups = []
			group_list.each do |group|
			#	binding.pry
			 new_group = self.new(group)
			@@all_groups << new_group
			 
			 #inding.pry
			end
			@@all_groups
		
		
		
			
			#binding.pry
		end
		
		def self.team_in_group
         team_group
         #binding.pry
			  split_teams = Worldcup::Team.players_to_teams.each_slice(4).to_a
		#	  binding.pry
			  split_teams.each_with_index do |chunk, index|
			  	

			  	chunk.each do |each_team|
			  		#binding.pry
			  		@@all_groups[index].teams << each_team
			  		#binding.pry
			  	end
			  end
			 
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