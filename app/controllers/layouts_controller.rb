class LayoutsController < ApplicationController
  def application
    @meals = Meal.all
  end
end