require 'rails_helper'

RSpec.describe CountriesService do
  it 'returns a chosen country' do
    response = CountriesService.chosen_country('france')

    expect(response).to be_an(Array)
  end
end