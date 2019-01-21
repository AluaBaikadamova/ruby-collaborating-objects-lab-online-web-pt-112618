class Artist
  attr_accessor :name
 

  @@artists = []
 @@songs = []
  def initialize(name)
    
    @name = name
   @@artists << self
  end
  
  def add_song(song)
    
    song.artist = self 
    @@songs << song
  end
 def find_or_create_by_name (name)
   t=false
   @@artists.each do |item| 
     if item.name==name
       t=true
     end
   end
   if t==false
     a=Artist.new(name)
     @@artist<<a
     
   end
     
 end
 def songs
    @@songs
  end
  def add_song_by_name(name)
    a=Song.new(name)
    add_song(a)
  end
  
  def save
   self.class.all << self
 end
  
  def self.all
    @@artists
  end
  def self.song_count
    @@songs.count
  end
end