require 'rails_helper'

RSpec.describe YoutubeFacade, :vcr do
  describe '#video' do
    it 'creates youtube poros' do
      video = YoutubeFacade.video('greece')

      expect(video.title).to eq "A Super Quick History of Greece"
      expect(video.video_id).to eq "455LqjL-Diw"
    end
  end
end