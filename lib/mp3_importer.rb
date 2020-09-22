class MP3Importer
  attr_accessor :filename, :path

  def initialize(path)
    @path = path
  end

  def files
    @files = Dir.entries(path)
    @files.delete_if {|file| file == "." || file == ".."}
  end

  def import
    binding.pry
    files.each {|file| Song.new_by_filename(file.gsub(".mp3", ""))}
  end

end
