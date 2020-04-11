class Rooms

attr_reader(:name, :room_size, :music_library, :register)

    def initialize(name, room_size, music_library, register)
        @name = name
        @room_size = []
        @music_library = []
        @register = register
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
        if @room_size.length() >= 0
        @room_size.delete(guest)
        end
    end

    def check_in_fee(fee)  
        @register += fee
    end


end