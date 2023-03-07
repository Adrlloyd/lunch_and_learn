require 'rails_helper'

RSpec.describe 'get air quality for a country' do
  it 'returns air quality for a country' do
    get '/api/v1/air_quality?country=france'

    expect(response).to be_successful
    air_quality = JSON.parse(response.body, symbolize_names: true)[:data][0]

    expect(air_quality).to have_key(:type)
    expect(air_quality[:type]).to be_a(String)

    expect(air_quality[:attributes]).to have_key(:aqi)
    expect(air_quality[:attributes][:aqi]).to be_a(Integer)

    expect(air_quality[:attributes]).to have_key(:datetime)
    # expect(air_quality[:attributes][:datetime]).to eq(1678213130) not dynamic but is displaying the datetime

    expect(air_quality[:attributes]).to have_key(:readable_aqi)
    expect(air_quality[:attributes][:readable_aqi]).to be_a(String)
  end
end