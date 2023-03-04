class Api::V1::RecipesController < ApplicationController
  def index
    if params[:country]
      render json: RecipesSerializer.new(RecipesFacade.countries_recipes(params[:country]))
    end
  end
end