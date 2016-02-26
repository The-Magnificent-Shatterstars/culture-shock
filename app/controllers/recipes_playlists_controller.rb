class RecipesPlaylistsController < ApplicationController
  def show
    playlist = Playlist.new(params["genre"])
    render json: playlist.random_playlist
  end

  def index
  end
end
