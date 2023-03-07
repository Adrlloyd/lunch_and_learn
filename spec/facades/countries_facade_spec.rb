require 'rails_helper'

RSpec.describe CountriesFacade do
  describe '#rand_country' do
    it 'creates a poro from a random country' do
      country = CountriesFacade.rand_country
      
      expect(country).to be_an Array
    end
  end

  describe '#chosen_country' do
    it 'creates a poro from a chosen country' do
      country = CountriesFacade.chosen_country('france')

      expect(country).to be_an Array
    end
  end
end