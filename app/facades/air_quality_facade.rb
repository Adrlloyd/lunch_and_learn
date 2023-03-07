class AirQualityFacade
  def self.air_quality_info(country)
    lat = CountriesFacade.chosen_country(country)[0].lat
    lon = CountriesFacade.chosen_country(country)[0].lon

    data = AirQualityService.air_quality_info(lat, lon)
      data[:list].map do |air_quality|
         AirQuality.new(air_quality) 
      end
  end
end