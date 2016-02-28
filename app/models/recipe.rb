

class Recipe
attr_reader :response
  def initialize(search)
    # @search = HTTParty.get("http://food2fork.com/api/search?key=#{ENV["RECIPE_KEY"]}&q=#{search}")
    @search = (JSON.parse(File.read("test/fixtures/recipe_tests.json")))
  end

  def random_recipe
    r = @search["recipes"].sample
    # r["title"]
    # r["source_url"]
  end

  def title
    random_recipe["title"]
  end

  def source
    random_recipe["source_url"]
  end

  # def as_json(options=nil)
  #   {}
  # end
  #
end
