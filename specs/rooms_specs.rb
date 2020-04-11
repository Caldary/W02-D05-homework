require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../rooms.rb')
require_relative("../songs.rb")
require_relative("../guests.rb")

class RoomsTest < MiniTest::Test

    def setup
        @song1 = Songs.new("Bohemian Rhapsody", "Queen", "Rock")
        @room1 = Rooms.new("Boogey Town", 0, [])
        @guest1 = Guests.new("Paulo", 31)
    end

       def test_room_has_name()
           assert_equal("Boogey Town", @room1.name)
       end

       def test_room_has_capacity()
           assert_equal(0, @room1.capacity())
       end

       def test_room_has_a_music_library()
           assert_equal([], @room1.music_library())
       end
   
       def test_music_library_is_empty()
            assert_equal(0, @room1.music_library.length())
       end

       def test_add_song_to_library()
            @room1.add_song(@song1)
            assert_equal(1, @room1.music_library.length())
       end

       def test_add_guest_to_room()
        @room1.add_guest(@guest1)
        assert_equal(1, @room1.capacity())
       end

end
