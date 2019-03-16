require 'open-uri'
require 'nokogiri'
require 'pry'




require_relative "./worldcup/version"
require_relative "./worldcup/cli"
require_relative "./worldcup/scraper"
require_relative "./worldcup/team"
require_relative "./worldcup/group"
require_relative "./worldcup/player"


module Worldcup
  class Error < StandardError; end
  # Your code goes here...
end
