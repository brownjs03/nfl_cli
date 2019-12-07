class Cli 
  
  def start 
    Api.fetch
    list_teams
    
  end 
  
  def list_teams
    Team.all.each_with_index do |team, index|
      puts "#{index + 1}. #{team.name}"
    end 
  end 
  
end 