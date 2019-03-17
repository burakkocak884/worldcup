




class Worldcup::CLI


		

		 def call
		 # welcome
		 # list_of_commands
		 run
		end




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
			        puts teams
			         next_option
			         run
			    elsif input == "players"
			    	puts "'Let's get list of teams first"
		  		    puts teams
		  		    puts "Type in a number  to see the team's players"
					new_team_number = gets.strip.to_i
		  			player_print(new_team_number)
		  			next_option
			         run
			    elsif input == "facts"
			  		Worldcup::Scraper.team_facts
			  		next_option
			  		run
		  		elsif input == "groups"
		  			Worldcup::Group.team_in_group
		  			 group_with_teams
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
		def teams
			counter = 0
			Worldcup::Scraper.teams_data.each do|team|
			
			puts "#{counter += 1}. #{team}"
			sleep(0.1)
			end
			puts ""
		end
		def group_with_teams
			teams_for_group = Worldcup::Scraper.teams_data.each_slice(4).to_a
			Worldcup::Scraper.groups.each_with_index do |group, index|
			#binding.pry
			puts "#{group} :"
			teams_for_group[index].each do |teams|
				#binding.pry
			puts "~~~~> #{teams}"
			sleep(0.08)
				
			end
			end
		end
		def player_print(team_number)

			list_of players = Worldcup::Player.create

			
			puts "hello_player"
		    # puts "Squad of #{Worldcup::Scraper.teams_data[team_number-1]} :"
      #       puts "Players"
      #       players_of_each_team[team_number-1].each do |player|
      #       puts " --> #{player}"
      #       sleep(0.08)#binding.pry
      #   end
    end





end

 #CLI.welcome
#CLI.next_option
 #CLI.list_of_commands
# CLI.run
 
 