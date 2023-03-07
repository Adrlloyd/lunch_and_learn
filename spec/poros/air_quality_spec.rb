require 'rails_helper'

RSpec.describe AirQuality do
  describe 'initialize' do
    it 'exists' do
      data = {
        main: {aqi: 1}
      }

      air_quality = AirQuality.new(data)
      expect(air_quality).to be_instance_of(AirQuality)
      expect(air_quality.aqi).to eq(1)
      expect(air_quality.readable_aqi).to eq('Good')
    end
  end
end