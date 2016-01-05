class CreateQuantities < ActiveRecord::Migration
  def change
    create_table :quantities do |t|
      t.references :ingredient, index: true, foreign_key: true
      t.references :recipe, index: true, foreign_key: true
      t.string :amount

      t.timestamps null: false
    end
  end
end
