class MP3Importer
  require 'pry'
  attr_accessor :path
  
  def initalize(path)
    @path = path
end 

def files 
  #binding.pry
  loaded_files = Dir.glob("#{path}/*.mp3")
  loaded_files.map do |file| 
    file.gsub("#{path}/", "")
end 
end 
  
end 

