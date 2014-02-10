json.array!(@ingredients) do |ingredient|
  json.extract! ingredient, :name, :amount
  json.url ingredient_url(ingredient, format: :json)
end