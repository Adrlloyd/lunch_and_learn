require 'rails_helper'

RSpec.describe RecipesFacade, :vcr do
  describe '#countries_recipes' do
    it 'creates recipe poros' do
      recipes = RecipesFacade.countries_recipes('greece')

      expect(recipes).to be_an Array
      expect(recipes[0].title).to eq 'Kourabiedes (Greece): Walnut Sugar Cookies'
      expect(recipes[0].country).to eq 'greece'
      expect(recipes[0].url).to_not eq nil
      expect(recipes[0]).to_not eq nil
    end
  end
end