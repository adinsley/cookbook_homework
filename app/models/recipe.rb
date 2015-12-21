class Recipe < ActiveRecord::Base
  belongs_to :meal

  def self.search(query)
    # where(:title, query) -> This would return an exact match of the query
    where("name like ?", "%#{query}%") 
  end

end
