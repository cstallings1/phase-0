# Create a Playlist from Driver Code

# I worked on this challenge [by myself].
# I spent [#] hours on this challenge.


# Pseudocode
# Create a song object
  #Your song should be created with a song title and an artist
  # Create variables for song and artist
#Create a playlist object
  #Your playlist should be created by providing any number of song objects
  # Create a container to hold pairs of songs and titles
#Create a way to add songs to your playlist
  #Accept any number of songs
  #Add these to your original list of songs as key value pairs
# Create a way to view the number of sons in a playlist
  # Return the number of songs in the songs container
#Create a way to play a specific song
  # Return lyrics to the song
# Create a way to remove a given song from a playlist
#   Evaluate each artist and value in the container
#   IF the song matches the given song
#     remove the song
#   END
# Create a way to check if the playlist includes a given song
#   Evaluate each key value pair in the song container
#   IF the song matches the give song
#     return true
#   ELSE
#     return false
#   end
# Create a way to play every song in the playlist
#   Use the method 'play' to play each song on the playlist
#Create a method to show all songs and artists that make up the playlist


# Initial Solution
# class Song
#   attr_accessor :song, :artist
#   def initialize(song, artist)
#     @song = song
#     @artist = artist
#   end

#   def play
#     puts "Playing #{@song} by #{@artist}:"
#     sleep(0.5)
#     puts "I'm playing the song..."
#     sleep(0.5)
#     puts "La la la la..."
#   end
# end

# class Playlist
#   def initialize(*songs)
#     @songs = songs
#     @song_hash = {}
#     songs.each do |song|
#       @song_hash[song.artist] = song.song
#     end
#   end

#   def add(*songs)
#     songs.each do |song|
#       @song_hash[song.artist] = song.song
#     end
#   end

#   def num_of_tracks
#     @song_hash.values.length
#   end

#   def remove(song)
#     @song_hash.delete_if{|artist, value| value == song}
#   end

#   def includes?(song)
#     @song_hash.each do |artist, song|
#       if song == song
#         return true
#       else
#         return false
#       end
#     end
#   end

#   def play_all
#     @songs.each{|song| song.play}
#   end

#   def display
#     puts "Display Playlist:"
#     @song_hash.each{|artist, song| puts "#{artist}: #{song}"}
#   end
# end



# Refactored Solution
class Song
  attr_accessor :title, :artist
  def initialize(title, artist)
    @title = title
    @artist = artist
  end

  def play
    puts "Now playing #{@title} by #{@artist}:"
    sleep(0.5)
    puts "I'm playing the song..."
    sleep(0.5)
    puts "La la la la..."
  end
end

class Playlist
  def initialize(*songs)
    @songs = songs
  end

  def add(*songs)
    songs.each{|song| @songs << song}
  end

  def num_of_tracks
    @songs.length
  end

  def remove(song)
    @songs.delete_if{|track| track == song}
  end

  def includes?(song)
    @songs.include?(song)
  end

  def play_all
    @songs.each{|song| song.play}
  end

  def display
    puts "Display Playlist:"
    @songs.each{|song| puts "#{song.title}: #{song.artist}"}
  end
end


# DRIVER CODE AND TESTS GO BELOW THIS LINE
one_by_one = Song.new("One by One", "Sirenia")
world_so_cold = Song.new("World So Cold", "Three Days Grace")
going_under = Song.new("Going Under", "Evanescence")

my_playlist = Playlist.new(one_by_one, world_so_cold, going_under)

lying_from_you = Song.new("Lying From You", "Linkin Park")
angels = Song.new("Angels", "Within Temptation")

my_playlist.add(lying_from_you, angels)
p my_playlist.num_of_tracks == 5
going_under.play #How would you model a song getting "played" in Ruby? I used `puts` and `sleep`. You can model this however you want.
my_playlist.remove(angels)
p my_playlist.includes?(lying_from_you) == true
my_playlist.play_all
my_playlist.display





# Reflection
