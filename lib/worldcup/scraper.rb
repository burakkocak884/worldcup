require 'open-uri'
require 'pry'
require 'nokogiri'
# require_relative './team.rb'
#    require_relative "./cli.rb/"
#    require_relative './group.rb'
#    require_relative "./player.rb/"
class Worldcup::Scraper
	
		# Method to scrape name of teams from a website, and print it out as a list.
		def self.teams_data 
			
			html_team = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
			list_of_teams = []
			teams = html_team.css (".toclevel-2 .toctext")
			teams.each do |team_name|
		    list_of_teams << team_name.text
			end
			actual_list = list_of_teams[0..31]

			end

			
		def self.team_facts
	        facts = []
	        html_facts = Nokogiri::HTML(open("https://www.roadtrips.com/blog/world-cup-facts/"))
	        tournament_facts = html_facts.css("#post-18975 ul")
			tournament_facts.each do |fact|
			fact.css("li").map do |each_fact|
			puts "==>>   #{each_fact.text}"
			sleep(0.2)
				  end
			 end
		end

			
		def self.groups
			group_array = []
			html_groups = Nokogiri::HTML(open("https://www.fifa.com/worldcup/groups/"))
			groups = html_groups.css(".fi-pageheader")
			indiv_group = groups.css("span")
			teams = html_groups.css(".fi-t__nText")
			indiv_group.each do |group|
			group_array << group.text
			end
			group_array
			#binding.pry
			teams_for_group = teams_data.each_slice(4).to_a
			group_array.each_with_index do |group, index|
			#binding.pry
			puts "#{group} :"
			teams_for_group[index].each do |teams|
				#binding.pry
			puts "~~~~> #{teams}"
			sleep(0.08)
				
			end
			end
		end


		def self.players(team_number)
			teams_players = []
			html_player = Nokogiri::HTML(open("https://en.wikipedia.org/wiki/2018_FIFA_World_Cup_squads"))
			player_list = html_player.css(".sortable .nat-fs-player")
			team_list = html_player.css("h3 .mw-headline")
			
			#binding.pry
			player_list.each do |players|
			teams_players << players.css("a")[1].text
			end
			players_of_each_team = teams_players.each_slice(23).to_a
			#binding.pry
		    puts "Squad of #{teams_data[team_number-1]} :"
            puts "Players"
            players_of_each_team[team_number-1].each do |player|
            puts " --> #{player}"
            sleep(0.08)

	
		end
	end
			




end
 #Scraper.players
# Scraper.teams_data
# Scraper.groups