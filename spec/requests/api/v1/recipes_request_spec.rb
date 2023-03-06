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

  it 'can pick a random country if none is supplied and return recipes for that country', vcr: { record: :new_episodes } do
    rand_country = CountriesFacade.rand_country

    get '/api/v1/recipes'

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

  it 'returns an empty data array if an empty string is passed' do
    get '/api/v1/recipes?country='

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response).to eq({ data: [] })
  end

  it 'returns an empty data array if a non country passed' do
    get '/api/v1/recipes?country=nocountry'

    expect(response).to be_successful

    parsed_response = JSON.parse(response.body, symbolize_names: true)

    expect(parsed_response).to be_a(Hash)
    expect(parsed_response).to have_key(:data)
    expect(parsed_response).to eq({ data: [] })
  end
end