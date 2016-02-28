class RecipesPlaylistsController < ApplicationController
  def show
    playlist = Playlist.new(params["genre"])
    render json: playlist.tracks

    # recipe = Recipe.new(params["genre"])
    # render json: recipe.random_recipe
  end

  def index
  end
end
