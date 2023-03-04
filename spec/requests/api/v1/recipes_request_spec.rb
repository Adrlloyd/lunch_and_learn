require 'rails_helper'

RSpec.describe 'get recipes for a country', :vcr do
  it 'returns recipes for a country' do
    get '/api/v1/recipes?country=greece'

    expect(response).to be_successful
    recipe = JSON.parse(response.body, symbolize_names: true)[:data][0]
    expect(recipe[:attributes]).to have_key(:title)
    expect(recipe[:attributes][:title]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:url)
    expect(recipe[:attributes][:url]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:country)
    expect(recipe[:attributes][:country]).to be_a(String)

    expect(recipe[:attributes]).to have_key(:image)
    expect(recipe[:attributes][:image]).to be_a(String)

    expect(recipe[:attributes]).to_not have_key(:uri)
    expect(recipe[:attributes]).to_not have_key(:ingredients)
    expect(recipe[:attributes]).to_not have_key(:calories)
  end
end