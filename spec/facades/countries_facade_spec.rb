require 'rails_helper'

RSpec.describe CountriesFacade do
  describe '#rand_country' do
    it 'creates a poro from a random country' do
      country = CountriesFacade.rand_country
      
      expect(country).to be_an Array
    end
  end
end