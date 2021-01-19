class Artist

attr_accessor :name
# getter and setter method for name

def initialize(name)
    @name = name
    @songs = [] #dont need 
end
#everytime a new instance is created we will have a name attribute 
# we have a container for our songs attribute

def songs
    Song.all.select do |song|
        song.artist == self
    end
end
#has many songs ::: 
#take all Song classes and iterate over them. if the song that is associated with this
#artist compare it to this artist class (compare to itself)

def add_song(song)
    @songs << song     #could also take out line
    song.artist = self 
end
#takes in a song and will always increment the song count whenever method is used
#we want to make sure the song will be pushed into songs array 
# then assign the songs artist to itself 


def add_song_by_name(song_name)
    song = Song.new(song_name)
    #song.artist = self 
    self.add_song(song)
end
#takes in a songname and will always increment the song count whenever method is used
#create new instance of Song class with song_name 
#use instance method add song for new song variable aka s 

def self.song_count
Song.all.count
end
#return class method that holds total number of songs 

end