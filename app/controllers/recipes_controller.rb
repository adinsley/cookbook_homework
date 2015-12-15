class RecipesController < ApplicationController
  
  def index
    @recipes = Recipe.all
  end

  def show
    @recipe = Recipe.find(params[:id])
  end

  def new
    @recipe = Recipe.new
    @meals = Meal.all
  end

  def create
    Recipe.create(recipe_params)
    redirect_to recipes_path
  end

  def edit
    @recipe = Recipe.find(params[:id])
    @meals = Meal.all
  end

  def update
    Recipe.find(params[:id]).update(recipe_params)
    redirect_to recipes_path
  end

  private

  def recipe_params
    params.require(:recipe).permit(:name, :meal_id, :key_ingrediant, :method, :ingrediants)
  end

end