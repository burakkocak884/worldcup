require_relative "./scraper.rb"
require_relative "./team.rb/"


require 'pry'
class CLI

	
#binding.pry
		def welcome

				puts ""
				puts ""
				puts ""
			  sleep(3)
			  puts "    ########      ###               ##            #            "
			  sleep(0.9)
			  puts "    #           #     #            #  #           #            "
			  sleep(0.8)
			  puts "    #          #       #          #    #          #            "
			  sleep(0.7)
			  puts "    #         #         #        #      #         #            " 
			  sleep(0.6)
			  puts "    #         #         #       #        #        #            "
			  sleep(0.5)
			  puts "    #   ####  #         #      # # #  # # #       #            "
			  sleep(0.4)
			  puts "    #      #  #         #     #            #      #            "
			  sleep(0.3)
			  puts "    #      #   #       #     #              #     #            "
			  sleep(0.2)  
			  puts "    #      #    #     #     #                #    #            "
			  sleep(0.1)
			  puts "    ########      ###      #                  #   #########    "
			  puts ""

			  sleep(3)



		    puts ""
		    puts "Welcome to ''FIFA WorldCup'' fan information app!!!"
		    puts ""
		    puts "Here are list of commands you can enter to explore"
		    puts "about The Biggest Sports Event in The World."

	    	puts ""
			puts "You may enter 'exit' at any point to close the app."
			puts "----------------------------------------------------"
	  		puts "Lets start !!!"
	  		puts "----------------------------------------------------"
 


			end



		def run

			# list_players

		 puts "What would like to see next?"
			
				input = gets.strip
			
				if input == "teams"
		        puts Scraper.teams_data
		        puts "Next options are: teams, groups, quarter, semi, final, winner, and exit"
		        run
		  	
		  		elsif input == "facts"
		  		Scraper.team_facts
		  		puts "Next options are: teams, groups, quarter, semi, final, winner, and exit"
		  		run
		  		elsif input == "groups"
		  		Team.groups
		  		run
		  			
		 	 elsif input == "semi"
		  		#semi filan teams
		  		elsif input == "final"
		  		#final method
		  		elsif input == "winner"
		  		#winner method
		    	elsif input == "exit"
		  		puts "See you in FIFA WorldCup 2022 Qatar,  Good Bye..."
				else
					puts "Invalid entry, try again"
					puts "Next options are: teams, groups, quarter, semi, final, winner, and exit"
					

					return run
		 		end
			
		end



def list_of_commands
    
   
    puts "----------------------------------------------------"
    puts "Enter 'teams' to view list of the teams in The WorldCup 2018"
	sleep(0.9)
	puts "----------------------------------------------------"
	puts "Enter 'groups' to view list of the teams each group "
	sleep(0.8)
	puts "----------------------------------------------------"
	puts "Enter 'quarter' to view list of the teams that played in Quarter Final in The WorldCup 2018"
	sleep(0.7)
	puts "----------------------------------------------------"
	puts "Enter 'semi' to view list of the teams that played in Semi Final in The WorldCup 2018"
	sleep(0.6)
	puts "----------------------------------------------------"
	puts "Enter 'final' to view list of the teams played in Final in The WorldCup 2018"
	sleep(0.5)
	puts "----------------------------------------------------"
	puts "Enter 'winner' to view the team that won the final match in The WorldCup 2018"
	sleep(0.8)
	puts "----------------------------------------------------"
	puts "Enter 'facts' to see interesting facs of WorldCup of the past."
	sleep(0.8)
	puts "----------------------------------------------------"
	# sleep(0.4)
	# puts "Enter 'teams' to view list of the teams in WorldCup 2018"
	# sleep(0.3)
	# puts "Enter 'teams' to view list of the teams in WorldCup 2018"
	# sleep(0.2)
	# puts "Enter 'teams' to view list of the teams in WorldCup 2018"


	end

# 	def list_players
# @players = Team.player

# 	end

end

# CLI.list_of_commands
# CLI.run
# CLI.list_of_commands