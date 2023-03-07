class AirQualityService
  def self.conn
    Faraday.new(url: 'http://api.openweathermap.org',  params: {appid: ENV['OW_key']})
  end

  def self.air_quality_info(lat, lon)
    response = conn.get("/data/2.5/air_pollution?lat=#{lat}&lon=#{lon}")
    JSON.parse(response.body, symbolize_names: true)
  end
end