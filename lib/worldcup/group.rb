require 'pry'
require_relative "./scraper.rb"
 require_relative "./cli.rb/"
 require_relative "./team.rb/"
require_relative "./player.rb/"

class Group


	attr_accessor :name, :team

		@@all_groups = []

		def initialize(name)
			@name = name
			@@all_groups << self
			@teams = []
		end

	
	 	def self.team_group
			 Scraper.groups.each do |group|
			 new_group = Group.new(group)
			 #binding.pry
			end
		end
# 		def self.team_group_print
# #binding.pry
# 			all.each do |group|
# 				#binding.pry
# 				# puts "#{group}:"
# 				# group.team.each do |team|
# 				# puts " ==>> #{team}"

# 			#end
# 		end
		
		def self.all
		return  @@all_groups
			
		end


end
#Group.team_group_print
#Group.team_group
#roup.all