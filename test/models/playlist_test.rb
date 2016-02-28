require 'test_helper'
# require 'JSON'
require "#{Rails.root}/app/models/playlist.rb"

class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("./test/fixtures/playlist.json"))
  end
end

class PlaylistTest < ActiveSupport::TestCase

  test "must pass argument in initialize" do
   assert_raises(ArgumentError) {
     Playlist.new()
   }
  end

  test "retrieve random playlist" do
    r = Playlist.new("kpop")
    q = Playlist.new("kpop")
    refute r.random_playlist("long") == q.random_playlist("long")
  end
end
