class RecipesPlaylistsController < ApplicationController
  def show
    playlist = Playlist.new(params["genre"])
    render json: playlist.random_playlist

    recipe = Recipe.new(param["genre"])
    render json: recipe.random_recipe
  end

  def index
  end
end
