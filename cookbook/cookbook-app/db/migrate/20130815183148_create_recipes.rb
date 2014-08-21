class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.text :description
      t.string :prep_time
      t.text :ingredients
      t.text :directions

      t.timestamps
    end
  end
end
