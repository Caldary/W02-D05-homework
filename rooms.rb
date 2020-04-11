class Rooms

attr_reader(:name, :room_size, :music_library, :capacity)

    def initialize(name, room_size, music_library, capacity)
        @name = name
        @room_size = []
        @music_library = []
        @capacity = 6
    end

    def add_song(song)
        @music_library << song
    end

    def check_in_guest(guest)
        if @capacity <= 6  
        @room_size << guest
        end
    end

    def check_out_guest(guest)
        @room_size.delete(guest)
    end

end