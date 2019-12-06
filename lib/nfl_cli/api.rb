require 'httparty'
require 'pry'

class Api 
  
  def self.fetch  
  url = "http://site.api.espn.com/apis/site/v2/sports/football/nfl/teams"
  response = HTTParty.get(url)
  response["sports"][0]["leagues"][0]["teams"].each do |team|
    name = team["team"]["displayName"]
    record = team["team"]["record"]["items"][0]["summary"]
  binding.pry
  end 
  end
  
end 