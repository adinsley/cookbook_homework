class Ingredient < ActiveRecord::Base
  has_many :recipes, through: :quantities
  has_many :quantities
end
