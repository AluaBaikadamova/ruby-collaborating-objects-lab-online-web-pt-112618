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
 def self.find_or_create_by_name (name)
 ind=@@artists.index {|x| x.name==name}
if ind==nil
  a=Artist.new(name)
  @@artists << a
    return a
else
  return @@artist[ind]
end



 end
 def songs
    @@songs
  end
  
  def self.print_songs(name)
    @@songs.each do |s|
      puts "#{s.name}"
    end
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