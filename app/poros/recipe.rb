class Recipe
  attr_reader :country, :title, :url, :image

  def initialize(country, data)
    @country = country
    @title = data[:label]
    @url = data[:url]
    @image = data[:image]
  end
end