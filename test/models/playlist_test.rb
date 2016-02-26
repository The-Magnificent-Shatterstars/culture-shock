require 'test_helper'
# require 'JSON'
require "#{Rails.root}/app/models/playlist.rb"

class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("./test/models/playlist.json"))
  end
end


class PlaylistTest < ActiveSupport::TestCase
  test "playlist array contains url" do
    p = Playlist.new("kpop")
    assert_equal "http://open.spotify.com/user/spotify/playlist/0GsCJgN24wOrQljPRNtszI", p.playlist_list[3]
  end

  def test_another_thing
    #test goes here
  end
end


# newplay = Playlist.new("kpop")
# puts newplay.url
