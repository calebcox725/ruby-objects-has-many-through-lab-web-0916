class Artist
  attr_accessor :name
  attr_reader :songs

  def initialize(name)
    self.name = name
    self.songs = []
  end

  def add_song(song)
    songs << song
    song.artist = self
  end

  def genres
    genres = songs.map { |song| song.genre }
  end

  private

  def songs=(songs)
    @songs = songs
  end
end