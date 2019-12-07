class Cli 
  
  def self.start 
    Api.fetch 
    puts "Welcome to the NFL! Which team would you like information on?"
    Team.all.each do |team|
    puts team.name 
    binding.pry
  end 
    
  end 
  
end 