class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.integer :time
      t.string :difficulty
      t.string :instructions

      t.timestamps
    end
  end
end
