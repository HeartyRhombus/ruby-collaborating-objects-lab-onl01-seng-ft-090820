class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def add_song(song)
    # binding.pry
    song.artist = self
  end

  def songs
    Song.all.select { |song| song.artist == self}
  end

  def self.find_or_create_by_name(name)
    if artist = @@all.find { |artist| artist.name == name}
      # @@all.find { |artist| artist.name == name}
      # artist
    else
      artist = Artist.new(name)
      # artist
    end
    artist
    # @@all.find { |artist| artist.name == name} ? @@all.find { |artist| artist.name == name} : Artist.new(name)
  end

  def print_songs
    songs.select {|song| puts song.name}
  end

end
