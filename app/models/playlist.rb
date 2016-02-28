require 'httparty'
require 'byebug'
class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("playlist.json"))
    # @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end


  def get_playlists
    playlists = @search_term["playlists"]["items"]
    # playlists.map{|a| a["external_urls"]["spotify"]}.sample
  end

  def random_playlist(length)
    get_playlists
    if length == "short"
      short_playlists = get_playlists.select {|a| a["tracks"]["total"] < 100 }
      short_playlists.sample
    elsif length == "long"
      long_playlists = get_playlists.select {|a| a["tracks"]["total"] > 100 }
      long_playlists.sample
    else
      playlists = @search_term["playlists"]["items"]
      playlists.map{|a| a["external_urls"]["spotify"]}.sample
      # selection = "You didn't specify a length, so I will select a random playlist for you."
    end

  end

    # def total
    #   selection["tracks"]["total"]
    # end
end


# newlist = Playlist.new("kpop")
# puts newlist.total
