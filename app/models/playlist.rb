# require 'json'
require 'httparty'
require 'rspotify'
RSpotify.authenticate("bd39e68d741a411085a81d155f1a14f9", "fd2f75a53744417598e2e69030c2986d")

class Playlist
  def initialize(search_term)
    # @search_term = JSON.parse(File.read("playlist.json"))
    @search_term = HTTParty.get("https://api.spotify.com/v1/search?q=%22#{search_term}%22&type=playlist")
  end

  def random_playlist
    # playlists = @search_term["playlists"]["items"]
    # # @selected = playlists.map{|a| a["external_urls"]["spotify"]}.sample
    # @selected = playlists.sample
    # @selected["external_urls"]["spotify"]
    # RSpotify.raw_response = true
    # RSpotify::Artist.search('Cher')
    playlist = RSpotify::Playlist.find('spotifyphilippines', '6iPgKbb5OdSilOBOKLtY8n')
  end

  # def get_playlist_image
  #   @selected["images"][0]["url"]
  # end

  # def get_playlist_length
  #   GET https://api.spotify.com/v1/users/{user_id}/playlists/{playlist_id}
  # end
end

newlist = Playlist.new("kpop")
p newlist.random_playlist
# puts newlist.get_playlist_image


# RSpotify.authenticate("<your_client_id>", "<your_client_secret>")
#
# # Now you can access playlists in detail, browse featured content and more
#
# wizzler = RSpotify::User.find('wizzler')
# wizzler.playlists #=> (Playlist array)
#
# # Find by id
# playlist = RSpotify::Playlist.find('wizzler', '00wHcTN0zQiun4xri9pmvX')
# playlist.name               #=> "Movie Soundtrack Masterpieces"
# playlist.description        #=> "Iconic soundtracks featured..."
# playlist.followers['total'] #=> 13
# playlist.tracks             #=> (Track array)
#
# # Search by category
# party = RSpotify::Category.find('party')
# party.playlists #=> (Playlist array)
# categories = RSpotify::Category.list # See all available categories
#
# # Access featured content from Spotify's Browse tab
# featured_playlists = RSpotify::Playlist.browse_featured(country: 'US')
# new_releases = RSpotify::Album.new_releases(country: 'ES')
