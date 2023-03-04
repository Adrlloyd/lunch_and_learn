require 'rails_helper'

RSpec.describe Recipe do
  describe 'inititalize' do
    it 'exists and has data' do
      data = {
              label: "Kourabiedes (Greece): Walnut Sugar Cookies",
              image: "fake-image",
              url: "https://www.foodnetwork.com/recipes/food-network-kitchen/kourabiedes-greece-walnut-sugar-cookies-recipe-2103740"
              }
      country = 'greece'
      recipe = Recipe.new(country, data)

      expect(recipe).to be_a Recipe
      expect(recipe.country).to eq 'greece'
      expect(recipe.title).to eq "Kourabiedes (Greece): Walnut Sugar Cookies"
      expect(recipe.url).to eq "https://www.foodnetwork.com/recipes/food-network-kitchen/kourabiedes-greece-walnut-sugar-cookies-recipe-2103740"
      expect(recipe.image).to eq 'fake-image'
    end
  end
end