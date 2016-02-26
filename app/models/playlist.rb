# require 'json'
require 'httparty'
class Playlist
  def initialize(search_term)
    # @search_term = JSON.parse(File.read("playlist.json"))
    @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end

  def random_playlist
    playlists = @search_term["playlists"]["items"]
    playlists.map{|a| a["external_urls"]["spotify"]}.sample
  end

  # def get_playlist_image
  # end
end

# newlist = Playlist.new("kpop")
# puts newlist.playlist_list
