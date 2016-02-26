class RecipesPlaylistsController < ApplicationController
  def show
   @food = Recipe.new(JSON.parse(File.read("test/fixtures/recipe_tests.json")))
   @music = Playlist.new(JSON.parse(File.read("test/fixtures/playlist.json")))
   
   render json: {recipe:
                   {name: "#{food.title}",
                    recipe_source: "#{food.source}",
                 playlist:
                   {songs: "#{music.random_playlist}"
                  }
                }
              }
  end


  def index
  end
end
