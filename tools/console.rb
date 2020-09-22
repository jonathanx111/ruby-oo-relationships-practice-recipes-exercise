require_relative '../config/environment.rb'

apple = Ingredient.new("apple")
pear = Ingredient.new("pear")
sugar = Ingredient.new("sugar")
peanuts = Ingredient.new("peanuts")



john = User.new("john")
amy = User.new("amy")
luke = User.new("luke")
caryn = User.new("caryn")

luke_peanuts = Allergy.new(luke, peanuts)
# bruno_garlic =  Allergy.new(bruno, garlic)
caryn_peanuts = Allergy.new(caryn, peanuts)
john_apple = Allergy.new(john,apple)
amy_apple= Allergy.new(amy,apple) 



pie = Recipe.new("pie")
cake = Recipe.new("cake")
mac_cheese = Recipe.new("mac_cheese")
steak = Recipe.new("steak")

pie_1 = RecipeIngredient.new(pie, apple)
pie_2 = RecipeIngredient.new(pie, pear)
pie_3 = RecipeIngredient.new(pie, sugar)

cake_1 = RecipeIngredient.new(cake, sugar)
cake_2 = RecipeIngredient.new(cake, apple)

j_p = RecipeCard.new(john, pie, "July 4th", 1)
j_c = RecipeCard.new(john, cake, "Halloween", 2)

l_p = RecipeCard.new(luke, pie, "April1st", 3)
l_c = RecipeCard.new(luke, cake, "November24", 4)
l_m = RecipeCard.new(luke, mac_cheese, "May1st", 1)
l_s = RecipeCard.new(luke, steak, "Dec24", 2)




binding.pry
