class Api::V1::AirQualityController < ApplicationController
  def show 
    @result = CountriesFacade.chosen_country(params[:country]).first
    @air_quality = AirQualityFacade.air_quality_info(@result.name)

    render json:AirQualitySerializer.new(@air_quality)
  end
end