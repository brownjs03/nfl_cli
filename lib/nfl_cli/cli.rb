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
      menu
      elsif input == "list"
      list_teams
      menu 
    elsif input == "exit"
    puts "See you next week!"
    exit 
    else puts 
      puts "I'm sorry, That input was not recognized."
      menu
    end 
  end 
  
end 