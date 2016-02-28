require 'test_helper'
require "#{Rails.root}/app/models/recipe.rb"

class Recipe
  def initialize(search)
    @search = JSON.parse(File.read("test/fixtures/recipe_tests.json"))
  end
end

class RecipeTest < ActiveSupport::TestCase

  test "must pass argument in initialize" do
   assert_raises(ArgumentError) {
     Recipe.new()
   }
 end

  test "select a random recipe from the correct genre" do
    a = Recipe.new("Korean")
    b = Recipe.new("Korean")
    refute a.random_recipe == b.random_recipe
  end


end
