class ImageService
  def self.conn
    Faraday.new(url: 'https://api.unsplash.com/', params: {client_id: ENV['unsplash_key']})
  end

  def self.images(country)
    response = conn.get("search/photos?query=#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end
end