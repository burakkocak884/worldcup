




class Worldcup::CLI


		
		 # call method will execute the next methods in order.
		 def call
		 welcome
		 list_of_commands
		 run
		end

		# welcome method isplays a welcome message to user.
		def welcome

			puts ""
			puts ""
			puts ""
			sleep(2)
			puts "    ########      ###              #           #           "
			sleep(0.1)
			puts "   #            #     #            #           #            "
			sleep(0.1)
			puts "  #            #       #          # #          #            "
			sleep(0.1)
			puts "  #           #         #        #   #         #            " 
			sleep(0.1)
			puts "  #           #         #       #     #        #            "
			sleep(0.1)
			puts "  #    ####   #         #      # # # # #       #            "
			sleep(0.1)
			puts "  #        #  #         #     #         #      #            "
			sleep(0.1)
			puts "  #        #   #       #     #           #     #            "
			sleep(0.1)  
			puts "   #       #    #     #     #             #    #            "
			sleep(0.1)
			puts "    ########      ###      #               #   #########    "
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
			puts "---------------------------------------------------------"
			sleep(0.5)
	  		puts "Lets start !!!"
	  		puts "---------------------------------------------------------"
	  		sleep(0.5)
 		end


 		# Output of run method depends on what the input is from a user,
 		# It will select the right path to desired info,
 		# It will display of options at every step,
 		# It will loop back to itself when input is invalid,
 		# The app will exit , when the input is "exit".
		def run
			puts ""
			puts ""
			puts ""
			next_option
			puts ""
			puts "What would like to see next?"
			puts ""
			input = gets.strip.downcase
	
		if input == "teams"
	        puts teams
	       
	        run
	    elsif input == "players"
	    	puts "'Let's get names of 32 teams first"
  		    puts teams
  		    puts "Let's pick a number to see details"
			new_team_number = gets.strip.to_i
  			player_print(new_team_number)
  			run
	    elsif input == "facts"
	  		Worldcup::Team.tournament_facts
	  		run
  		elsif input == "groups"
  			puts "Enter 'list' for list of groups or 'detail' for detils of every group"
  			group_input = gets.strip.downcase
  			group_with_teams(group_input)
	  		run
	  elsif input == "exit"	
 	 		puts "See you in FIFA WorldCup 2022 Qatar,  Good Bye..."
		else
			puts "Invalid entry, try again"
			run
 			end
	
		end


		# list_of_commands will list of input options for the user.
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
			puts "---------------------------------------------------"
			puts "You may enter 'exit' at any point to close the app."
			sleep(0.5)
			puts "------------------------------------"
		end
		# next_option is  a message the user for next selection.
		def next_option
			puts "Available options are: teams, groups, players, facts, and exit"
		end
		# teams method will display list of teams when input is "teams".
		def teams
			counter = 0
			Worldcup::Team.scrape_create.each do|team|
			puts "#{counter += 1}. #{team.name}"
			sleep(0.1)
			end
			puts ""
		end
		
		
		# When input is "groups" , it will first display list of teams,
		# Then , it  will select correct team.
		def group_with_teams(input)
			 if input == "list"
			 	 Worldcup::Group.scrape_create.each do |group|
       			puts "^^^#{group.name} ___"
       			end
       		elsif input == "detail"
			groups_with_teams = Worldcup::Group.team_in_group
			groups_with_teams.each_with_index do |group, index1|
			puts "#{group.name} :"
			groups_with_teams[index1].teams.each_with_index do |team|
			puts "~~~~> #{team.name}"
			sleep(0.04)
			end
			end
			end
		end
		#player_print will take an argument which depends on what the user input is,
		# then It will list 23 players with their team name.
		def player_print(team_number)
			puts "Selecting 23 specific players out of 736 from FIFA WorldCup 2018 Russia..."
			list_of_teams = Worldcup::Team.players_to_teams
			puts "Squad of #{list_of_teams[team_number-1].name} :"
			list_of_teams[team_number-1].players.each do |player|
			puts "~~>  #{player.name}"
			sleep(0.4)
			end
		end
					
		    
  





end

 #CLI.welcome
#CLI.next_option
 #CLI.list_of_commands
# CLI.run
 
 