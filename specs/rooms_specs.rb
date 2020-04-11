require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../rooms.rb')

class RoomsTest < MiniTest::Test

    def setup
        @room1 = Rooms.new("Boogey Town", 6, [])
    end

       def test_room_has_name()
           assert_equal("Boogey Town", @room1.name)
       end

       def test_room_has_capacity()
           assert_equal(6, @room1.capacity())
       end

       def test_room_has_a_music_library()
           assert_equal([], @room1.music_library())
       end
   


end
