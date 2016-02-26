require 'test_helper'

class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("playlists.json"))
  end
end


class PlaylistTest < ActiveSupport::TestCase
  test "x" do
  #test goes here
  end

  def test_another_thing
    #test goes here
  end
end
