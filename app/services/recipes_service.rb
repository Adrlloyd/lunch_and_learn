class RecipesService

  def self.conn
    Faraday.new(url: "https://api.edamam.com/api/recipes/v2", params: {type: 'public', app_id: ENV['app_id'], app_key: ENV['app_key']})
  end

  def self.countries_recipes(country)
    response = conn.get("?q=#{country}")
    JSON.parse(response.body, symbolize_names: true)
  end
end