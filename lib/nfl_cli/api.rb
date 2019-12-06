require 'httparty'
require 'pry'

class Api 
  
  def fetch 
  url = "http://site.api.espn.com/apis/site/v2/sports/football/nfl/teams/"
  response = HTTParty.get(url)
  binding.pry
  end

end 