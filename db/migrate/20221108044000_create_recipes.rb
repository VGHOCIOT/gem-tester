class CreateRecipes < ActiveRecord::Migration[7.0]
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :author_name
      t.integer :rating
      t.integer :duration
      t.integer :calories
      t.integer :servings
      t.integer :popularity

      t.timestamps
    end
  end
end
