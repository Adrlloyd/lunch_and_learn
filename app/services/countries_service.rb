class CountriesService
  def self.conn
    Faraday.new(url: 'https://restcountries.com/v3.1/')
  end

  def self.rand_countries
    response = conn.get('all')
    JSON.parse(response.body, symbolize_names: true)
  end

  def self.country_by_name(name)
    response = conn.get("name/#{name}")
    JSON.parse(response.body, symbolize_names: true)
  end
end
  