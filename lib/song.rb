class Song
    attr_accessor :name,:artist,:genre

    @@count = 0
    @@artists = []
    @@genres = []

    def initialize(name,artist,genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count += 1
        @@artists << artist
        @@genres << genre
    end

    def self.count
        @@counts
    end

    def self.artists
        @@artists
    end

    def self.genres
        @@genres
    end

    def self.artist_count
        @@artists.group_by {|artist| artist}.transform_values {|group| group.count}
    end
    
    def self.genre_count
        @@genres.group_by {|genre| genre}.transform_values { |group| group.count}
    end
    
end