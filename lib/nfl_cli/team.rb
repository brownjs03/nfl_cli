class Team 
  
  attr_accessor :name, :record, :schedule_link, :roster_link, :injury_report
  
  @@all = [] 
  
  def initialize(name, record, schedule_link, roster_link, injury_report)
    @name = name 
    @record = record
    @schedule_link = schedule_link
    @roster_link = roster_link
    @injury_reprot = injury_report
    @@all << self 
  end 
  
  def self.all 
    @@all 
  end 
  
end 