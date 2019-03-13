require 'open-uri'
require 'pry'
require 'nokogiri'
class Scraper
	require_relative './team.rb'


		def self.teams_data
			puts "Teams of The WorldCup 2018 Russia"
			html_team = Nokogiri::HTML(open("https://www.nationalgeographic.com/people-and-culture/top-teams-countries-world-cup-graphic-interactive-culture/#secondpage"))
			list_of_teams = []
			#binding.pry
			counter = 0
			team_names = html_team.css(".ai2html")
			team_names.each do |team_name|
				#binding.pry
				 list_of_teams << team_name.css("#g-ai1-3 p").text.upcase.strip
				
			end
			list_of_teams.sort
			list_of_teams.map do|team|
				puts "#{counter += 1}. #{team}"
			end
			 print "Next options are: teams, groups, quarter, semi, final, winner, and exit"
			


			end

		def self.team_facts
           facts = []
            html_facts = Nokogiri::HTML(open("https://www.roadtrips.com/blog/world-cup-facts/"))
          tournament_facts = html_facts.css("#post-18975 ul")

				tournament_facts.each do |fact|
				#binding.pry
				fact.css("li").map do |each_fact|
					puts "==>>   #{each_fact.text}"
					sleep(2)
					#binding.pry
				end
				
			end
			print "Next options are: teams, facts, groups, quarter, semi, final, winner, and exit"
			end

			def self.team_details



			end




end

# Scraper.team_facts
#Scraper.teams_data