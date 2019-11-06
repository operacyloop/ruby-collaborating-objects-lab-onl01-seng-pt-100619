class Song
  
  attr_accessor :name, :artist
  

  
  def initialize(name)
    @name = name 
    @@all << self
end 

def songs 
end 

def new_by_filename(filename) #class method NOT instance method 
binding.pry 
split_files = filename.split(" - ")
song_name = split_files[1]
new_song = self.new(song_name) #same as Song.new(song_name) 
# name part, create an artist, and use artist name that will use other methods

end 
  
end 