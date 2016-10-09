require 'minitest/autorun'
require 'minitest/rg'
require_relative '../song'

class TestSong < Minitest::Test

  def setup
    @song = Song.new("B52's", "Love Shack")
  end

  def test_song_has_a_artist
    assert_equal("B52's", @song.artist)
  end

  def test_song_has_a_title
    assert_equal("Love Shack", @song.title)
  end


end