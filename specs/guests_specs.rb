require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../guests.rb')

class GuestsTest < MiniTest::Test

    def setup
        @guest = Guests.new("Paulo", 31)
   end

       def test_guest_has_name()
           assert_equal("Paulo", @guest.name())
       end

       def test_guest_has_age()
           assert_equal(31, @guest.age())
       end



end
