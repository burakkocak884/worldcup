require 'open-uri'
require 'nokogiri'
require 'pry'




require "./lib/worldcup/version"
require "./lib/worldcup/cli"
require "./lib/worldcup/scraper"
require "./lib/worldcup/team"


module Worldcup
  class Error < StandardError; end
  # Your code goes here...
end
