class CreateRecipeFoods < ActiveRecord::Migration[7.0]
  def change
    create_table :recipe_foods do |t|
      t.references :recipe_item, null: false, foreign_key: true
      t.references :food, null: false, foreign_key: true
      t.integer :quantity, default: 0

      t.timestamps
    end
  end
end
