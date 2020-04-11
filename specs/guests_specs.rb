require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../guests.rb')

class GuestsTest < MiniTest::Test

    def setup
        @guest = Guests.new("Paulo", 31, 500)
   end

       def test_guest_has_name()
           assert_equal("Paulo", @guest.name())
       end

       def test_guest_has_age()
           assert_equal(31, @guest.age())
       end

       def test_wallet_has_money()
            assert_equal(500, @guest.wallet())
       end

       def test_guest_can_spend_money()
            @guest.spend_money(100)
            assert_equal(400, @guest.wallet())
       end
       
end
