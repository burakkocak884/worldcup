require 'pry'
class CLI
	
#binding.pry
def run
	
	input = gets.strip
	if input == "exit"
		puts "Good Bye..."
	elsif input == "teams"
		Scraper.teams_data
 #binding.pry

			
	end
	#Scraper.get_initial_data
end

def list_of_commands
    puts "Enter 'teams' to view list of the teams in WorldCup 2018"
	sleep(0.9)
	puts "Enter 'groups' to view list of the teams each group"
	sleep(0.8)
	puts "Enter 'quarter' to view list of the teams that made to Quarter Final in WorldCup 2018"
	sleep(0.7)
	puts "Enter 'semi' to view list of the teams that made to Semi Final in WorldCup 2018"
	sleep(0.6)
	puts "Enter 'final' to view list of the teams that made to Final in WorldCup 2018"
	sleep(0.5)
	puts "Enter 'winner' to view the team that won the final match"
	sleep(0.4)
	puts "Enter 'teams' to view list of the teams in WorldCup 2018"
	sleep(0.3)
	puts "Enter 'teams' to view list of the teams in WorldCup 2018"
	sleep(0.2)
	puts "Enter 'teams' to view list of the teams in WorldCup 2018"


	end

end

# CLI.list_of_commands