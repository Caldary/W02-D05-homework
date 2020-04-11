class Rooms

attr_reader(:name, :room_size, :music_library)

    def initialize(name, room_size, music_library)
        @name = name
        @room_size = []
        @music_library = []
    end

    def add_song(song)
        @music_library << song
    end

    def check_in_guest(guest)
        if @room_size.length() <= 5
        @room_size << guest
        end
    end

    def check_out_guest(guest)
        @room_size.delete(guest)
    end

end