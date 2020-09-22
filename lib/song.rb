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
    binding.pry
    song = self.new()
    # song.name = filename.split
    # song
  end

  def artist_name

  end

end
