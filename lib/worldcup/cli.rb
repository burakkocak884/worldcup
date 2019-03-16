# require_relative "./scraper.rb"
# require_relative "./team.rb/"
# require_relative "./player.rb"
# require_relative "./group.rb/"
require 'pry'



class CLI


		def welcome

				puts ""
				puts ""
				puts ""
			  sleep(2)
			  puts "    ########      ###               ##            #            "
			  sleep(0.1)
			  puts "   #            #     #            #  #           #            "
			  sleep(0.1)
			  puts "  #            #       #          #    #          #            "
			  sleep(0.1)
			  puts "  #           #         #        #      #         #            " 
			  sleep(0.1)
			  puts "  #           #         #       #        #        #            "
			  sleep(0.1)
			  puts "  #   ### #   #         #      # # #  # # #       #            "
			  sleep(0.1)
			  puts "  #        #  #         #     #            #      #            "
			  sleep(0.1)
			  puts "  #        #   #       #     #              #     #            "
			  sleep(0.1)  
			  puts "   #       #    #     #     #                #    #            "
			  sleep(0.1)
			  puts "    ########      ###      #                  #   #########    "
			  puts ""

			  sleep(2)



		    puts ""
		    puts "Welcome to ''FIFA WorldCup'' fan information app!!!"
		    puts ""
		    sleep(0.5)
		    puts "Here are list of commands you can enter to explore"
		    puts "about The Biggest Sports Event in The World."
		    sleep(0.5)

	    	puts ""
			puts "You may enter 'exit' at any point to close the app."
			sleep(0.5)
			puts "---------------------------------------------------------"
			sleep(0.5)
	  		puts "Lets start !!!"
	  		puts "---------------------------------------------------------"
	  		sleep(0.5)
 


			end



		def run

			# list_players
				sleep(1)
		 puts "What would like to see next?"
			
				input = gets.strip
			
				if input == "teams"
			        puts Scraper.teams_data
			         next_option
			         run
			    elsif input == "players"
		  		    puts Scraper.teams_data
		  		    puts "Type in a number  to see the team's players"
					new_team_number = gets.strip.to_i
		  			Scraper.players(new_team_number)
		  			next_option
			         run
			    elsif input == "facts"
			  		Scraper.team_facts
			  		next_option
			  		run
		  		elsif input == "groups"
			  		Scraper.groups
			  		next_option
			  		run
		  		
		    	elsif input == "exit"	
		 	 		puts "See you in FIFA WorldCup 2022 Qatar,  Good Bye..."
				else
					puts "Invalid entry, try again"
					next_option
					run
		 		end
			
		end



def list_of_commands
    
   
    puts "------------------------------------------------------------"
    puts "Enter 'teams' to view list of the teams in The WorldCup 2018"
	sleep(0.9)
	puts "----------------------------------------------------"
	puts "Enter 'groups' to view list of the teams each group "
	sleep(0.8)
	puts "------------------------------------------------------------------------------------"
	puts "Enter 'players' to view list of player of each team that played in The WorldCup 2018"
	sleep(0.7)
	puts "--------------------------------------------------------------"
	puts "Enter 'facts' to see interesting facs of WorldCup in the past."
	sleep(0.8)
	puts "---------------------------"
	

	end
	def next_option
		puts "Next options are: teams, groups, players, facts, and exit"
	end


end

 #CLI.welcome
#CLI.next_option
 #CLI.list_of_commands
# CLI.run
 
 