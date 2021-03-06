class MusicImporter

  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.entries(@path).select {|file| file.end_with?(".mp3")}
  end

  def import
    self.files.collect {|file| Song.create_from_filename(file)}
  end

end
