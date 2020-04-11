class Rooms

attr_reader(:name, :capacity, :music_library)

    def initialize(name, capacity, music_library)
        @name = name
        @capacity = capacity
        @music_library = []
    end
end