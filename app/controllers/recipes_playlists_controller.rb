class RecipesPlaylistsController < ApplicationController
  def show
   food = Recipe.new(JSON.parse(File.read("test/fixtures/recipe_tests.json")))
   music = Playlist.new(JSON.parse(File.read("test/fixtures/playlist.json")))

   render json: {recipe:
                   {name: "#{food.title}",
                    recipe_source: "#{food.source}",
                 playlist:
                   {songs: "#{music.random_playlist}"
                  }
                }
              }
  end

  # def show
  #   playlist = Playlist.new(params["genre"])
  #   render json: playlist.random_playlist
  #   # http://localhost:3000/recipes_playlists/show?genre=korean
  #
  #   recipe = Recipe.new(params["genre"])
  #   render json: recipe.random_recipe
  # end

  def index
  end
end
