require 'rails_helper'

RSpec.describe Video do
  describe 'initialize' do
    it 'exists' do
      data = {
        snippet: {title: "fake-video" },
        id: {videoId: "1234" }
      }

      video = Video.new(data)

      expect(video).to be_instance_of(Video)
      expect(video.title).to eq("fake-video")
      expect(video.video_id).to eq("1234")
    end
  end
end