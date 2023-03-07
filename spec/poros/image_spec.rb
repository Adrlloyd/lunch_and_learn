require 'rails_helper'

RSpec.describe Image do
  describe 'initialize' do
    it 'exists' do
      data = {
        urls: {raw: "fake-image" },
        alt_description: "location of pic"
      }

      image = Image.new(data)

      expect(image).to be_instance_of(Image)
      expect(image.url).to eq("fake-image")
      expect(image.description).to eq("location of pic")
    end
  end
end