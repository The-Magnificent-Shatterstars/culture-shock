require 'byebug'
require 'httparty'
class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("app/models/playlist.json"))
    # @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end


  def get_playlists
    playlists = @search_term["playlists"]["items"]
    # playlists.map{|a| a["external_urls"]["spotify"]}.sample
  end

  # Would this sort of structure work to filter through the "total" for short or long playlists?
  def random_playlist(length)
    get_playlists
    if length == "short"
      short_playlists = playlists.select {|a| a["total"] < 100 }
      short_playlists.sample
    elsif length == "long"
      long_playlists = playlists.select {|a| a["total"] > 100 }
      long_playlists.sample
    else
      playlists = @search_term["playlists"]["items"]
      playlists.map{|a| a["external_urls"]["spotify"]}.sample
    end
  end

    # def total
    #   random_playlist["owner"]["tracks"]["total"]
    # end

  # def get_playlist_image
  # end
end


# newlist = Playlist.new("kpop")
# puts newlist.get_playlists
