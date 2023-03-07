class CountriesFacade
  def self.rand_country
    CountriesService.rand_countries.map do |country|
      country[:name][:common]
    end
  end

  def self.chosen_country(name)
    country = CountriesService.chosen_country(name)
    country.map do |data|
      Country.new(data)
    end
  end
end