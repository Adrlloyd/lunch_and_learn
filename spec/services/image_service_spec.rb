require 'rails_helper'

RSpec.describe ImageService, :vcr do
  describe '#images' do
    it 'returns all the images based on a country search' do
      response = ImageService.images("greece")

      expect(response).to have_key(:results)
      expect(response[:results]).to be_an(Array)
      expect(response[:results][0]).to have_key(:urls)
      expect(response[:results][0]).to have_key(:alt_description)
    end
  end
end