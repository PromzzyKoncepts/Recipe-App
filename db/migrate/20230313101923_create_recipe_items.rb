class CreateRecipeItems < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_items do |t|
      t.string :name
      t.integer :preparation_time, default: 0
      t.integer :cooking_time, default: 0
      t.text :description
      t.boolean :public, default: true
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
