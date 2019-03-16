require 'pry'
# require_relative "./scraper.rb"
#  require_relative "./cli.rb/"
#  require_relative "./team.rb/"


class Worldcup::Group


	attr_accessor :name, :teams

		    @@all_groups = []

		def initialize(name)
			@name = name
			@@all_groups << self
			@teams = []
		end

	
	 	def self.team_group
			
			#binding.pry
			Worldcup::Scraper.groups.each do |group|
			 new_group = Worldcup::Group.new(group)
			 #binding.pry
			end
		end
		def self.all
			@@all_groups
			#binding.pry
		end
	# 	def self.team_in_group
 #         #binding.pry
	# 		 split_teams = Worldcup::Team.all.each_slice(4).to_a
	# 		 binding.pry
		

	
	# end


end

# Group.team_group
# Group.all
# Group.team_in_group