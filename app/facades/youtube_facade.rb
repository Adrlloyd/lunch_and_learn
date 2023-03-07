class YoutubeFacade
  def self.video(country)
    Video.new(YoutubeService.video(country)[:items][0])
  end
end