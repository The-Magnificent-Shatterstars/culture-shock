# require 'json'
require 'httparty'
require 'rspotify'
RSpotify.authenticate("bd39e68d741a411085a81d155f1a14f9", "fd2f75a53744417598e2e69030c2986d")

class Playlist
  def initialize(search_term)
    # @search_term = JSON.parse(File.read("playlist.json"))
    @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end

  def get_id
    playlists = @search_term["playlists"]["items"]
    ids = []
    playlists.each do |r|
      @ids << "#{r["owner"]["id"]}, #{r["id"]}"
    end
    @ids
    # @selected = playlists.map{|a| a["external_urls"]["spotify"]}.sample
    # @selected = playlists.sample
    # @selected["external_urls"]["spotify"]
    # # RSpotify.raw_response = true
    # # RSpotify::Artist.search('Cher')
    # playlist = RSpotify::Playlist.find('spotifyphilippines', '6iPgKbb5OdSilOBOKLtY8n')
  end
  #
  def tracks
    @ids.each do |i|
      var = RSpotify::Playlist.find(i)
    end
    puts var
    # playlist = RSpotify::Playlist.find('spotifyphilippines', '6iPgKbb5OdSilOBOKLtY8n')
    # playlist.tracks
  end

  # def get_playlist_length
  #   GET https://api.spotify.com/v1/users/{user_id}/playlists/{playlist_id}
  # end
end

newlist = Playlist.new("kpop")
p newlist.tracks
# p newlist.tracks
# puts newlist.get_playlist_image
