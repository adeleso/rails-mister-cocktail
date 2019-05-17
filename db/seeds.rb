require 'open-uri'
require 'json'

response = open('https://www.thecocktaildb.com/api/json/v1/1/list.php?i=list')
json = JSON.parse(response.read)

json['drinks'].take(15).each do |h|
  Ingredient.create({'name' => h['strIngredient1']})
end
