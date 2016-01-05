class Recipe < ActiveRecord::Base
  belongs_to :meal
  has_many :ingredients, through: :quantities
  has_many :quantities

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end

end
