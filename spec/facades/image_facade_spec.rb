require 'rails_helper'

RSpec.describe ImageFacade, :vcr do
  describe '#images' do
    it 'creates image poros' do
      images = ImageFacade.images('greece')
    
      expect(images[0].url).to eq "https://images.unsplash.com/photo-1533105079780-92b9be482077?ixid=Mnw0MTkyNzB8MHwxfHNlYXJjaHwxfHxncmVlY2V8ZW58MHx8fHwxNjc4MTQ4NjY3&ixlib=rb-4.0.3"
      expect(images[0].description).to eq "Santorini, Greece"
    end
  end
end