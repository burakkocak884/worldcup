require 'open-uri'
require 'pry'
require 'nokogiri'
#require_relative './team.rb'
   #require_relative "./cli.rb/"
class Scraper
	

		def self.teams_data
			# puts "Teams of The WorldCup 2018 Russia"
			html_team = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
			list_of_teams = []
			#binding.pry
		
			teams = html_team.css (".toclevel-2 .toctext")
			#binding.pry
			teams.each do |team_name|
				#binding.pry
				 list_of_teams << team_name.text
				
			end
			actualy_list = list_of_teams[0..31]
			

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
				
				
				html_groups = Nokogiri::HTML(open("https://www.fifa.com/worldcup/groups/"))
				groups = html_groups.css(".fi-pageheader")
				indiv_group = groups.css("span")
				teams = html_groups.css(".fi-t__nText")
				indiv_group.each do |group|
					group_array << group.text
				end
				group_array
				#group_hash
			end


			def self.players
				teams_players = []
				
				html_player = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
				
				
				player_list = html_player.css(".sortable .nat-fs-player")
				team_list = html_player.css("h3 .mw-headline")
				
				#team_list.each do |teams|
					#binding.pry
				
				player_list.each do |players|
					
				teams_players << players.css("a")[1].text
				
			end
				players_of_each_team = teams_players.each_slice(23).to_a

		
			end
			




end
 #Scraper.players
# Scraper.teams_data
#Scraper.groups