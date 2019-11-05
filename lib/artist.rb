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
     Songs.all.select do | song | 
       song.artist == self 
      end
       # select will return all that fit, but find or detect will return first one
   end 
   
   def add_song(song)
     song.artist = self
    end
    
    def self.find_by_name(name) #class meth 
      self.all.find {|artist| artist.name == name}
    end 
    
    def self.find_or_create_by_name(name)
      if self.find_by_name(name) #I can find this artist return artist
      self.find_by_name(name) # return specifi artist
      else 
        #create new artist using name 
        self.new(name) 
    end 
end 