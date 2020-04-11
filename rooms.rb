class Rooms

attr_reader(:name, :capacity, :music_library)

    def initialize(name, capacity, music_library)
        @name = name
        @capacity = 0
        @music_library = []
    end

    def add_song(song)
        @music_library << song
    end

    def add_guest(guest)
        @capacity += 1
    end

end