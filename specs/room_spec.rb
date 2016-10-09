# Check in guests to rooms/Check out guests from rooms
# - Add songs to rooms

require 'minitest/autorun'
require 'minitest/rg'
require_relative '../room'
require_relative '../song'
require_relative '../guest'

class TestRoom < Minitest::Test

  def setup
    @song1 = Song.new("B52's", "Love Shack")
    @song2 = Song.new("B52's", "Rock Lobster")
    @song3 = Song.new("B52's", "Wig")
    @song4 = Song.new("The Cult", "Rain")
      
    @guest1 = Guest.new("Kylie",10)
    @guest2 = Guest.new("Janis",0)
    @guest3 = Guest.new("Joe",20)
    @guest4 = Guest.new("Dave",30)

    @songs = [@song1, @song2, @song3]

    @room = Room.new("Green", @songs, 3)
  end

  #--- Test room name ----------------
  def test_room_has_a_name
    assert_equal("Green", @room.name)
  end

  #--- Test room has 3 songs ----------
  def test_room_has_songs
    assert_equal(3,@room.songs.count)
  end

  #--- Test adding song to room ------
  def test_add_song_to_room
    @room.add_song(@song4)
    assert_equal(4,@room.songs.count)
  end

  #--- Test removing song from room ---
  def test_remove_song_from_room
    @room.remove_song(@song1)
    assert_equal(2,@room.songs.count)
  end

  #--- Check in Guests --------------
  def test_add_guest_to_room
    @room.add_guest(@guest1)
    assert_equal(1,@room.guests.count)
  end

  #--- Test guests have been added----
  def test_get_guests
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    assert_equal(["Kylie","Janis"],@room.get_guests)
  end

  #--- Check out guests from room ------
  def test_remove_guest_from_room
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.remove_guest(@guest1)
    assert_equal(1,@room.guests.count)
  end

  #--- Check size of room
  def test_room_size
    assert_equal(3,@room.size)
  end

  #--- Test when guest is added to full room ----
  def test_check_entry_full
    @room.add_guest(@guest1)
    @room.add_guest(@guest2)
    @room.add_guest(@guest3)
    assert_equal("Room full!",@room.check_entry_and_add_guest(@guest1))
  end

  #--- Test when guest not enough money ----
  def test_check_entry_money
    @room.add_guest(@guest1)
    assert_equal("not enough money", @room.check_entry_and_add_guest(@guest2))
  end

  #--- Test guest has money and there is space ----
  def test_check_entry_full
    @room.add_guest(@guest1)
    @room.add_guest(@guest3)
    @room.check_entry_and_add_guest(@guest1)
    assert_equal(3,@room.guests.count)
  end


  
  




end #--- Class Test room end---------------