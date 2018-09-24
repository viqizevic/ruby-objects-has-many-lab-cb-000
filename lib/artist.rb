class Artist
  attr_accessor :name
  attr_reader :songs

  @@total_songs = 0

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    song.artist = self
    @songs << song
    @@total_songs += 1
  end

  def add_song_by_name(title)
    add_song(Song.new(title))
  end

  def self.song_count
    @@total_songs
  end
end
