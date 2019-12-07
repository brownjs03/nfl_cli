require 'httparty'

class Api 
  
  def self.fetch  
  url = "http://site.api.espn.com/apis/site/v2/sports/football/nfl/teams"
  response = HTTParty.get(url)
  response["sports"][0]["leagues"][0]["teams"].each do |team|
    name = team["team"]["displayName"]
    record = team["team"]["record"]["items"][0]["summary"]
    roster_link = team["team"]["links"][1]["href"]
    schedule_link = team["team"]["links"][3]["href"]
    injury_report = team["team"]["links"][8]["href"]
    Team.new(name, record, schedule_link, roster_link, injury_report)
  end 
  end
  
end 