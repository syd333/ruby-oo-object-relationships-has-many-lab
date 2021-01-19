class Song

    attr_accessor :name, :artist 

    @@all = []

    def self.all 
        @@all
    end

    def initialize(name)
        @name = name
        @@all << self
    end

    def artist_name
        if self.artist
            self.artist.name
        else
           nil 
        end
    end

end