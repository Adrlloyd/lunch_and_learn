class RecipesFacade
  def self.countries_recipes(country)
    RecipesService.countries_recipes(country)[:hits].map do |data|
      Recipe.new(country, data[:recipe])
    end
  end
end