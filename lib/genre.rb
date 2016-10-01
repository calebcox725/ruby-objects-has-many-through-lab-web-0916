class Genre
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    songs << song
  end

  def artists
    artists = songs.map { |song| song.artist }
  end

  private

  def songs=(songs)
    @songs = songs
  end
end