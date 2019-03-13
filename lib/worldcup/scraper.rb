require 'pry'
class Scraper


	def get_web_page
		html = Nokogiri::HTML(open("https://www.nationalgeographic.com/people-and-culture/top-teams-countries-world-cup-graphic-interactive-culture/#secondpage"))
		binding.pry

	end
end