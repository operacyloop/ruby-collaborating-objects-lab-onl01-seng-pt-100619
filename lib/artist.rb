class Artist 
  
  attr_accessor :name
  
  @@all = []
  
  def initialize(name) 
    @name = name 
    # self.name
    @@all << self 
   end
   
   def self.all 
     @@all
   end 
   
   def songs 
     Songs.all 
     
   end 
end 