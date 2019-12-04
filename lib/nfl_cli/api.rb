NflCli::API
require 'httparty'
require 'pry'

class API 
  
  def fetch 
  url = "http://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/"
  response = HTTParty.get(url)
  binding.pry
end