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
    r = Playlist.new("kpop")
    q = Playlist.new("kpop")
    refute r.random_playlist == q.random_playlist
  end

  # def test_another_thing
  #   #test goes here
  # end
end


# newplay = Playlist.new("kpop")
# puts newplay.url
