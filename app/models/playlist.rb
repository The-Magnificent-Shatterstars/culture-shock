class Playlist
  def initialize(search_term)
    @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end

  def url
    #extract url
    return url
  end
end
