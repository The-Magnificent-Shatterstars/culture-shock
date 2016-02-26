
require 'test_helper'

class RecipeTest < ActiveSupport::TestCase
  test "select a random recipe from the correct genre" do
    r = Recipe.new(JSON.parse(File.read("test/models/recipe_tests.json")))

  end

  test "show the recipe title" do
  end

  test "show the recipe publisher and url" do
  end
end

# "publisher":"101 Cookbooks",
# "f2f_url":"http://food2fork.com/view/47744",
# "title":"How to Make Pesto like an Italian Grandmother",
# "source_url":"http://www.101cookbooks.com/archives/001570.html",
# "recipe_id":"47744",
# "image_url":"http://static.food2fork.com/pesto_ultimate07f8b3.jpg",
# "social_rank":100.0,
# "publisher_url":"http://www.101cookbooks.com"
