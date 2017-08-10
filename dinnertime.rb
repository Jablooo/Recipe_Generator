require 'HTTParty'
require 'Nokogiri'


# creating classes
class Recipe
  def initialize(url)
    @url = url
  end

  attr_accessor :url

  def self.all
  ObjectSpace.each_object(self).to_a
  end
end

r1 = Recipe.new("http://www.taste.com.au/recipes/chicken-bstilla-pies/uGbryXOY?r=quickeasy/kj1r4Zny")
r2 = Recipe.new("http://www.taste.com.au/recipes/beef-olive-spaghetti-bolognese/77f0654c-0c53-4f95-bc41-d864ae90426d?r=recipes/beefrecipes&c=ed77f9a0-ff56-40d0-b903-b24e86c38152/Beef%20recipes")
r3 = Recipe.new("http://www.taste.com.au/recipes/pappardelle-pumpkin-bacon-torn-bread/2318e227-1dc9-463f-94ee-e4c0ddf0778f?r=recipes/pastarecipes&c=9a361b5c-6b07-48cb-ba64-399b8627268c/Pasta%20recipes")



# This output currently works
Recipe.all.each do |url|
  puts "The recipe can be found on #{url.url}"
end





=begin gets user to input items in kitchen
ingredients = []

i = true
while i == true
  puts "What do you have in your fridge and pantry (print end to finish)"
  ingredient = gets.chomp
  if ingredient == "end"
    i = false
  end
  ingredients.push(ingredient)
end

# display back list
puts "Cool, it looks like you've got this at home!"
ingredients.delete("end")
a = ingredients.count
puts ingredients
=end
