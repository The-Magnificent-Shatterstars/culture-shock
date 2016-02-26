require 'json'
class Playlist
  def initialize(search_term)
    @search_term = JSON.parse(File.read("playlist.json"))
    # @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end

  def playlist_list
    playlists = @search_term["playlists"]["items"]
    playlist_array = []
    playlists.each do |s|
      playlist_array << "#{s["external_urls"]["spotify"]}"
    end
    playlist_array
  end

  def random_playlist
    self.playlist_list.sample
  end
end
