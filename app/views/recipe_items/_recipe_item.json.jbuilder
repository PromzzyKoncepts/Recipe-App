json.extract! recipe_item, :id, :name, :preparation_time, :cooking_time, :description, :public, :user_id, :created_at,
              :updated_at
json.url recipe_item_url(recipe_item, format: :json)
