class CountriesFacade
  def self.rand_country
    CountriesService.rand_countries.map do |country|
      country[:name][:common]
    end
  end
end