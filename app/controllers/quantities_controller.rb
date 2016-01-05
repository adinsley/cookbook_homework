class QuantitiesController < ApplicationController

  def new
    @quantity = Quantity.new
    @ingredients = Ingredient.all
    @recipes = Recipe.all
    
  end

  def create
    Quantity.create(quantity_params)
    redirect_to recipes_path
  end

  private

  def quantity_params
    params.require(:quantity).permit(:ingredient_id, :recipe_id, :amount)
  end

end