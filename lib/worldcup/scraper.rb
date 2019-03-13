require 'open-uri'
require 'pry'
require 'nokogiri'
class Scraper
	require_relative './team.rb'


		def self.get_web_page
			
			#binding.pry
			html = Nokogiri::HTML(open("https://www.nationalgeographic.com/people-and-culture/top-teams-countries-world-cup-graphic-interactive-culture/#secondpage"))
			#binding.pry
			#puts "hello"

		end


		def self.teams_data
			list_of_teams = []
			#binding.pry
			team_names = get_web_page.css(".ai2html")
			team_names.each do |team_name|
				#binding.pry
				 list_of_teams << team_name.css("#g-ai1-3 p").text.upcase.strip
				#binding.pry
			end
			list_of_teams.sort
			#binding.pry
		end

		def self.champions



		end





end
Scraper.get_web_page
Scraper.teams_data