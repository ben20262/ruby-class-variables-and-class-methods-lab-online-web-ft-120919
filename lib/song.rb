class Song
  attr_accessor :name, :artist, :genre
  @@song_count = 0
  @@song_genres = []
  @@song_artists = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre
    @@song_count += 1
    @@song_genre << genre
    @@song_artist << artist
  end

  def count
    @@song_count
  end

  def genres
    @@song_genres.uniq
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
    @@song_artist.uniq
  end

  def artist_count
    artist_hash = {}
    unique = artists()
    unique.each do |s_artist|
      count = 0
      @@song_genres.each do |song|
        count += 1 if s_artist == song
      end
      artist_hash[s_artist] = count
    end
    artist_hash
  end
end
