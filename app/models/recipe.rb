

class Recipe
attr_reader :response
  def initialize(search)
    @search = HTTParty.get("http://food2fork.com/api/search?key=#{ENV["RECIPE_KEY"]}&q=#{search}")
  end

  def random_recipe
    r = @search["recipes"].sample
    result["title"]
    result["source_url"]
  end

  def title
    random_recipe[0]
  end

  def source
    random_recipe[1]
  end

end
