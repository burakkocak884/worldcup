require 'open-uri'
require 'pry'
require 'nokogiri'
#require_relative './team.rb'
   #require_relative "./cli.rb/"
class Scraper
	

		def self.teams_data
			puts "Teams of The WorldCup 2018 Russia"
			html_team = Nokogiri::HTML(open("https://www.fifa.com/worldcup/groups/"))
			list_of_teams = []
			#binding.pry
		
			teams = html_team.css (".fi-t__nText")
			teams.each do |team_name|
				#binding.pry
				 list_of_teams << team_name.text
				
			end
			list_of_teams.uniq!

			#binding.pry
			
		end
			
		def self.team_facts
		        facts = []
		        html_facts = Nokogiri::HTML(open("https://www.roadtrips.com/blog/world-cup-facts/"))
		        tournament_facts = html_facts.css("#post-18975 ul")

				tournament_facts.each do |fact|
				#binding.pry
				fact.css("li").map do |each_fact|
				puts "==>>   #{each_fact.text}"
				sleep(0.2)
					#binding.pry
				end
				
			end
		end

			def self.groups
				
				group_array = []
				team_array = []
				group_hash = {}
				
				html_groups = Nokogiri::HTML(open("https://www.fifa.com/worldcup/groups/"))
				groups = html_groups.css(".fi-pageheader")
				indiv_group = groups.css("span")
				teams = html_groups.css (".fi-t__nText")
				indiv_group.each do |group|
					group_array << group.text
				end
				group_array
				#binding.pry
			
			  # teams.each do |team|
			  # team_array << team.text

					#   end
					
	   #          team_array.uniq!
				# new_array = team_array.each_slice(4).to_a
				# new_array
				# # counter = 0
				# indiv_group.each_with_index do |each_group, index|
				# group_hash[each_group.text] = new_array[index]

				# end
			#binding.pry
			#group_hash
			end


			




end
# Scraper.team_facts
#Scraper.teams_data
#Scraper.groups