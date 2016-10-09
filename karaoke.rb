require_relative ('./room')
require_relative ('./song')
require_relative ('./guest')
require('pry-byebug')

class Karaoke

  attr_reader :name, :songs,:guests

  def initialize(name, songs)
    @name = name
    @guests = []
    @songs = songs
  end


  def setup
    @song1 = Song.new("B52's", "Love Shack")
    @song2 = Song.new("B52's", "Rock Lobster")
    @song3 = Song.new("B52's", "Wig")
    @song4 = Song.new("The Cult", "Rain")
    
    @guest1 = Guest.new("Kylie")
    @guest2 = Guest.new("Janis")
    @guest3 = Guest.new("Joe")

    @songs = [@song1, @song2, @song3]

    @room = Room.new("Green", @songs)
  end

  def welcome()

    puts "welcome to the #{@room.name}"

  end





# def add_room(room_name)
#   @room = Room.new(room_name, @songs)
# end

# def add_guest(new_guest)
#   @guest1 = Guest.new(new_guest)

# end

# add_room("Green room")
# add_guest("Kylie")
# add_guest("Dave")
# add_guest("Joe")
# binding.pry
# puts @guests
# puts @room.name + " added"

welcome()

end


