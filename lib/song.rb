class Song

  attr_accessor :name, :artist, :filename

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(filename)
    # binding.pry
    song_details = filename.split(" - ")
    song = self.new(song_details[1])
    # song.name = filename.split
    song.artist_name=(song_details[0])
    song
  end

  def artist_name=(name)
    binding.pry
    artist = Artist.find_or_create_by_name(name)
    (Artist.add_song(self))
  end

end
