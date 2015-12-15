class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :meal_id
      t.string :key_ingrediant
      t.string :ingrediants
      t.string :method

      t.timestamps null: false
    end
  end
end
