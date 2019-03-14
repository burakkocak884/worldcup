require 'pry'
require_relative "./scraper.rb"
 require_relative "./cli.rb/"
 require_relative "./team.rb/"


class Group


	attr_accessor :name, :team

@@all_groups = []

		def initialize(name)
			@name = name
			@teams =[]
		end

	
		 def self.team_group
			 group_teams = Team.create
			 split_teams = group_teams.each_slice(4).to_a
			 #binding.pry

			 Scraper.groups.each_with_index do |group,index|
			 new_group = Group.new(group)
			 new_group.team = split_teams[index]
			 @@all_groups << new_group
			 end
			 @@all_groups
			 #binding.pry
		end
		def self.team_group_print

			team_group.each do |group|
				#binding.pry
				puts "#{group.name}:"
				group.team.each do |team|
				puts " ==>> #{team.name}"

			end
		end
		end


end
#Group.team_group_print
#