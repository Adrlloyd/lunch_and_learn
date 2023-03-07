require 'rails_helper'

RSpec.describe AirQualityFacade do
  it 'returns the air quality based on a given country' do
    lat = 2
    lon = 46
    data = AirQualityService.air_quality_info(2, 46)

    expect(data[:coord][:lon]).to eq 46
    expect(data[:coord][:lat]).to eq 2
  end
end