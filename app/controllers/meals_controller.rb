class MealsController < ApplicationController
  def index
    @meals = Meal.all
  end

  def show
    @meal = Meal.find(params[:id])
  end

  private
  def meal_params
    params.require(:meal).permit(:name)
  end

end

#   def new
#     @team = Team.new
#   end

#   def create
#     team = Team.create(team_params)
#     HomeTeam.create(team_id: team.id)
#     redirect_to teams_path
#   end

#   def show
#     @team = Team.find(params[:id])
#   end

#   def edit
#     @team = Team.find(params[:id])
#   end

#   def update
#     Team.find(params[:id]).update(team_params)
#     redirect_to teams_path
#   end

#   def destroy
#     Team.find(params[:id]).destroy
#     redirect_to teams_path
#   end

#   private
#   def team_params
#     params.require(:team).permit(:name, :image, :founded, :mascot, :ground, :league, :last_position)
#   end

