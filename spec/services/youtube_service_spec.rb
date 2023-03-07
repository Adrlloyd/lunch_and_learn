require 'rails_helper'

RSpec.describe YoutubeService, :vcr do
  it 'returns a video based on a country search' do
    response = YoutubeService.video('greece')

    expect(response[:items][0][:snippet]).to be_a(Hash)
    expect(response[:items][0][:snippet][:title]).to eq("A Super Quick History of Greece")
    expect(response[:items][0][:id][:videoId]).to eq("455LqjL-Diw")
  end
end