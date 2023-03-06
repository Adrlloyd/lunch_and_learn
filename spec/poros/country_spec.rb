require 'rails_helper'

RSpec.describe Country do
  describe 'initialize' do
    it 'exists' do
      data = {
        common: 'Italy'
      }

      country = Country.new(data)

      expect(country).to be_instance_of(Country)
      expect(country.name).to eq("Italy")
    end
  end
end