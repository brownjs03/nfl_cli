class Cli 
  
  def start 
    Api.fetch
    puts "NFL season is here! Which team would you like to know more about?"
    list_teams
    menu 
    end 
  
  def list_teams
    Team.all.each_with_index do |team, index|
      puts "#{index + 1}. #{team.name}"
    end 
  end 
  
  def menu
    puts "Please enter the number for the team you would like to see more about!"
    
  end 
  
end 