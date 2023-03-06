class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country]
      render json: RecipesSerializer.new(RecipesFacade.countries_recipes(params[:country]))
    elsif 
      country = CountriesFacade.rand_country.sample
      render json: RecipesSerializer.new(RecipesFacade.countries_recipes(country))
    else
      render json: {"data": []}
    end
  end
end