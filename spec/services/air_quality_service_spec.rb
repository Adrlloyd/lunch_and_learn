require 'rails_helper'

RSpec.describe AirQualityService do 
  it 'air_quality_info' do 

    quality = AirQualityService.air_quality_info(2.0, 46.8)
   

    expect(quality).to be_a Hash
    expect(quality).to have_key(:coord)
    expect(quality[:coord][:lon]).to eq 46.8
    expect(quality[:coord][:lat]).to eq 2
  end
end   