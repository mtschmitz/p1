json.array!(@recipes) do |recipe|
  json.extract! recipe, :name, :time, :difficulty, :instructions, :user_id
  json.url recipe_url(recipe, format: :json)
end