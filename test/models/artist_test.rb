require 'test_helper'

class ArtistTest < ActiveSupport::TestCase
  test "has a name" do
    assert_equal("Bonnie Tyler", artists(:one).name)
  end

#we can do this as artist has many albums which is defined in the models artist.rb file. make sure the artist is a plural 
  test "has albums" do 
    assert_equal(1, artists(:one).albums.count)
  end

end
