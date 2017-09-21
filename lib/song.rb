class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = []
  @@genres = []

  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @@artists << @artist
    @genre = genre
    @@genres << @genre
    @@count += 1
  end

  def self.count
    @@count
  end

  def self.artists
    @@artists.uniq
  end

  def self.genres
    @@genres.uniq
  end

  def self.genre_count
    genre_hash = Hash.new(0)
    @@genres.each do |current_genre|
      genre_hash[current_genre] += 1
    end
    genre_hash
  end

  def self.artist_count
    artist_hash = Hash.new(0)
    @@artists.each do |current_artist|
      artist_hash[current_artist] += 1
    end
    artist_hash
  end
end
