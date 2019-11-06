class Song
  
  attr_accessor :name, :artist
  

  
  def initialize(name)
    @name = name 
    @@all << self
end 

def songs 
end 

def new_by_filename(filename) #class method NOT instance method 

end 
  
end 