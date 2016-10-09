require_relative './room'
require_relative './song'
require_relative './guest'
require ('pry-byebug')

class Karaoke

  def initialize

    @room = Room.new("Green", @songs, 3)

    @song1 = Song.new("B52's", "Love Shack")
    @song2 = Song.new("B52's", "Rock Lobster")
    @song3 = Song.new("B52's", "Wig")
    @song4 = Song.new("The Cult", "Rain")

    @songs = [@song1, @song2, @song3]

    @guest1 = Guest.new("Kylie",10)
    @guest2 = Guest.new("Janis",0)
    @guest3 = Guest.new("Joe",20)
    @guest4 = Guest.new("Dave",30)

    @guests = [@guest1, @guest2, @guest3]

  end


  def run()
    intro()
    #print_playlist()
    #print_guestlist()
    menu()
    #new_guest()
    #print_guestlist()
  end

  def line
    puts"-------------------------------------------"
  end

  def intro()
    puts
    line()
    puts"--- hello and welcome to the " + @room.name + " room --- "
    line()
    puts
  end

  def menu()
      loop do
          puts  "1. Print Guestlist",
                "2. Print Playlist",
                "3. Add New Guest",
                "4. Add New Song",
                "5. Exit"

          input = gets.strip
          line()

          case input
          when "1"
              print_guestlist()
          when "2"
              print_playlist()
          when "3"
              new_guest()
          when "4"
              new_song()
          when "5"
              puts "Bye!"
              #clear screen
              puts "\e[H\e[2J"
              return
          else
              puts "Invalid option: #{input}"
          end
      end
  end

  def print_playlist()
    puts "- PLAYLIST:"
    number = 1
    @songs.each do |song|
      puts "- S#{number}: " + song.title + " by :" + song.artist
      number +=1
    end
    line()
    puts
  end

  def print_guestlist()
    puts "- GUESTLIST:"
    number = 1
    @guests.each do |guest|
      puts "- G#{number}: " + guest.name
      number +=1
    end
    line()
    puts

  end

  def new_guest()
    print "whats your name? "
    name = gets.chomp
    print "how much money do you have? "
    cash = gets.chomp
    @guests << Guest.new(name,cash)
    print_guestlist()
  end

  def new_song()
    print "whats the artist name? "
    artist = gets.chomp
    print "whats the song title? "
    title = gets.chomp
    @songs << Song.new(artist,title)
    print_playlist()
  end




end # Karaoke class end


# create a new Karaoke class and run the code.
code = Karaoke.new()
# run the code
code.run()