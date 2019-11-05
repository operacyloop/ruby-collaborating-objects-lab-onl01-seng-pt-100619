require 'pry'

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
     Songs.all.select do {| song | song == self }
       
      song = # will return all that fit, but find or detect will return first one
     
   end 
end 