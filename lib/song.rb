class Song
  attr_accessor :name, :artist
 @@all=[]
 def initialize(name)
    @name = name
   
     @@all << self
    
  end
  

  def self.new_by_filename(filename)
   a=Song.new(filename.split(" - ")[1])

 a.artist_name(filename.split(" - ")[0])
#Artist.add_song(self)
#@@all << self
  end
  
  def artist_name=(name) 
    Artist.find_or_create_by_name(name)
    
  end
  
 
 
end
 
