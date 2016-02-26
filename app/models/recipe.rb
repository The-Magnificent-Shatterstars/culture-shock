class Recipes
attr_reader :response
  def initialize(response)
    @response = response
  end

  def recipe_search
    @response["businesses"][0]["location"]["coordinate"]["latitude"]
  end
end
