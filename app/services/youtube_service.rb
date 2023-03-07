class YoutubeService
  def self.conn
    Faraday.new(url: 'https://www.googleapis.com/youtube/v3/', params:{key: ENV['yt_key']})
  end

  def self.video(country)
    response = conn.get("search?part=snippet&channelId=UCluQ5yInbeAkkeCndNnUhpw&maxResults=1&q=#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end
end