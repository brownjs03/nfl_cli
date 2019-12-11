class Cli 
  
  def start 
    Api.fetch
    puts "NFL season is here! Which team would you like to know more about?"
    list_teams
    menu 
    end 
  
  def list_teams
    Team.all.each.with_index(1) do |team, i|
      puts "#{i}. #{team.name}"
    end 
  end 
  
  def menu
    input = nil 
    while input != "exit"
    puts "Please enter the number for the team you would like to see more about. At any time type 'list' to see the teams again or 'exit' to exit the program." 
    input = gets.strip.downcase 
    if input.to_i > 0 && input.to_i <= Team.all.count
      team = Team.all[input.to_i - 1]
      puts 
      puts team.name
      puts "Record: #{team.record}"
      puts "Schedule: #{team.schedule_link}"
      puts "Roster: #{team.roster_link}"
      puts "Injury Report: #{team.injury_report}"
      puts 
      elsif input == "list"
      list_teams
    elsif input == "exit"
    quit 
    else puts 
      puts "I'm sorry, That input was not recognized."
    end 
  end 
  end 
  
  def quit 
    puts "See you next week for your NFL needs!"
  end 
  
end 