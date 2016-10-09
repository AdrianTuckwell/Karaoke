# Your rooms should have:
# - A name, guests and songs
class Room
attr_reader :name, :guests, :songs, :size, :cost
  
  def initialize(name, songs, size)
    @name = name
    @guests = []
    @songs = songs
    @size =size
    @cost = 10
  end

  def add_song(song)
    @songs << song
  end

  def remove_song(song)
    @songs.delete(song)
  end

  def full?
    @guests.count >= @size
  end

  def check_entry_and_add_guest(guest)
      case
      when @guests.count >= @size 
        return "Room full!"
      when guest.money < @cost 
        return "not enough money"
      else
        add_guest(guest)
      end
  end

  def add_guest(guest)
      @guests << guest
  end

  def remove_guest(guest)
    @guests.delete(guest)
  end

  def get_guests()
    return @guests.map {|guest| guest.name}
  end

  
end #--- Class Room end ----------------