json.array!(@recipes) do |recipe|
  json.extract! recipe, :id, :title, :description, :prep_time, :ingredients, :directions
  json.url recipe_url(recipe, format: :json)
end
