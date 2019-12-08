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
    input = gets.strip 
    if input.to_i > 0 
      puts Team.all[input.to_i - 1].name
      puts "Record: #{Team.all[input.to_i - 1].record}"
      puts "Schedule: #{Team.all[input.to_i - 1].schedule_link}"
      puts "Roster: #{Team.all[input.to_i - 1].roster_link}"
      puts "Injury Report: #{Team.all[input.to_i - 1].injury_report}"
    end 
  end 
  
end 