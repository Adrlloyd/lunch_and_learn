require 'rails_helper'

RSpec.describe LearningResource do
  describe 'initialize' do
    it 'exists' do
      country = 'greece'
      video = {
                snippet: {title: "fake-video" },
                id: {videoId: "1234" }
              }
      images = {
                urls: {raw: "fake-image" },
                alt_description: "location of pic"
              }
      resource = LearningResource.new(country, video, images)

      expect(resource).to be_instance_of(LearningResource)
      expect(resource.country).to eq('greece')
      expect(resource.video).to eq({
        snippet: {title: "fake-video" },
        id: {videoId: "1234" }
      })
      expect(resource.images).to eq({
        urls: {raw: "fake-image" },
        alt_description: "location of pic"
      })
    end
  end
end