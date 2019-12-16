class Song
  attr_accessor :name, :artist, :genre
  @@count = 0
  @@genres = []
  @@artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@genres << genre
    @@artists << artist
  end

  def count()
    @@count
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
    @@artists.uniq
  end

  def artist_count
    artist_hash = {}
    unique = artists()
    unique.each do |s_artist|
      count = 0
      @@artists.each do |song|
        count += 1 if s_artist == song
      end
      artist_hash[s_artist] = count
    end
    artist_hash
  end
end
