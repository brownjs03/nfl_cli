class Cli 
  
  def self.start 
    Api.fetch 
    puts "Welcome to the NFL! Which team would you like information on?"
    Team.all.each do |team|
    puts team.name 
  end 
    
  end 
  
end 