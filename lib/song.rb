class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists << artist
        @@genres << genre
        @@count += 1
    end

    def self.count
        return @@count
    end

    def self.artists
        array = []
        @@artists.each do |name|
            if not array.include?(name)
                array << name
            end
        end
        array
    end

    def self.genres
        array = []
        @@genres.each do |name|
            if not array.include?(name)
                array << name
            end
        end
        array
    end

    def self.genre_count
        hash = {}
        @@genres.each do |genre|
            if not hash.include?(genre)
                hash[genre] = 1
            else
                hash[genre] += 1
            end
        end
        hash
    end

    def self.artist_count
        hash = {}
        @@artists.each do |artist|
            if not hash.include?(artist)
                hash[artist] = 1
            else
                hash[artist] += 1 
            end
        end
        hash
    end


end