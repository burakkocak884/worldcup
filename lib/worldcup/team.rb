require_relative "./scraper.rb"
require_relative "./cli.rb/"
require 'pry'


class Team

	@@all_teams =[]

	attr_accessor :name, :coach, :players, :language, :starting11, :jersey_color

 def initialize(name)
 	@name = name 
 	binding.pry
 end



 def self.all
 	Scraper.teams_data
 	binding.pry
 end


end
self.all