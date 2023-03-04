require 'rails_helper'

RSpec.describe RecipesService, :vcr do
  describe '#countries_recipes' do
    it 'retuners all the recipes based on a country search' do
      response = RecipesService.countries_recipes("greece")
      expect(response[:hits]).to be_an(Array)
      
      response[:hits].each do |recipe|
        expect(recipe).to have_key(:recipe)
        expect(recipe[:recipe]).to be_a(Hash)
        expect(recipe[:recipe]).to have_key(:url)
        expect(recipe[:recipe][:url]).to be_a String
        expect(recipe[:recipe]).to have_key(:label)
        expect(recipe[:recipe][:label]).to be_a String
        expect(recipe[:recipe]).to have_key(:image)
        expect(recipe[:recipe][:image]).to be_a String
      end
    end
  end
end