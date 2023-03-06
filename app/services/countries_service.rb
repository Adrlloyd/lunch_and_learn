class CountriesService
  def self.conn
    Faraday.new(url: 'https://restcountries.com/v3.1/')
  end

  def self.rand_countries
    response = conn.get('all')
    JSON.parse(response.body, symbolize_names: true)
  end
end
  