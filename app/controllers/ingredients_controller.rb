class IngredientsController < ApplicationController
    def index
      if params[:search]
        @ingredients = Ingredient.search(params[:search])
      else
        @ingredients = Ingredient.all
      end
    end

    def show
      @ingredient = Ingredient.find(params[:id])
    end

    def new
      @ingredient = Ingredient.new
      
    end

    def create
      Ingredient.create(ingredient_params)
      redirect_to new_quantity_path
    end

    def edit
      @ingredient = Ingredient.find(params[:id])
      
    end

    def update
      Ingredient.find(params[:id]).update(ingredient_params)
      redirect_to ingredient_path
    end



    private

    def ingredient_params
      params.require(:ingredient).permit(:name, :group)
    end

  end
