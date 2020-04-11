require('minitest/autorun')
require('minitest/reporters')
MiniTest::Reporters.use! MiniTest::Reporters::SpecReporter.new
require_relative('../songs.rb')

class SongsTest < MiniTest::Test

    def setup
         @songs = Songs.new("Bohemian Rhapsody", "Queen", "Rock")
    end

        def test_song_has_tittle()
            assert_equal("Bohemian Rhapsody", @songs.title())
        end

        def test_song_has_artist()
            assert_equal("Queen", @songs.artist())
        end

        def test_song_has_genre()
            assert_equal("Rock", @songs.genre())
        end
    

end
