class RecipesController < ApplicationController
  
  def index
    if params[:search]
      @recipes = Recipe.search(params[:search])
    else
      @recipes = Recipe.all
    end
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
    Quantity.create(quantity_params)
    # redirect_to new_quantity_path
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