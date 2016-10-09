# Your songs should have:
# - Artist and title

class Song

  attr_reader :artist, :title

  def initialize(artist, title)
    @artist = artist
    @title = title
  end
end