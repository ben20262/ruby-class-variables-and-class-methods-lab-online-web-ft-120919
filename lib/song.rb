class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_count += 1
    @@genre << genre
    @@artist << artist
  end

  def count
    @@song_count
  end

  def genres
    @@genres.uniq
  end

  def genre_count
    genre_hash = {}
    unique = genres()
    unique.each do |s_genre|
      count = 0
      @@genres.each do |song|
        count += 1 if s_genre == song
      end
      genre_hash[s_genre] = count
    end
    genre_hash
  end

  def artists
    @artist.uniq
  end
end
