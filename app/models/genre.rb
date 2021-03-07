require 'pry'

class Genre < ActiveRecord::Base
  has_many :songs
  has_many :artists, through: :songs

  # return the number of songs in a genre
  def song_count
    self.songs.count
  end

  # return the number of artists associated with the genre
  def artist_count
    self.artists.count
    # self.artists.uniq.count
  end

  # return an array of strings containing every musician's name
  def all_artist_names
    self.artists.map {|artist| artist.name}
    # self.artists.map {|artists| artists.name}.uniq
  end
end
