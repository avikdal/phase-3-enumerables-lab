require 'pry'

# this method returns an array of hashes, which we'll use in the other methods
def spicy_foods 
  [
    { name: 'Green Curry', cuisine: 'Thai', heat_level: 9 },
    { name: 'Buffalo Wings', cuisine: 'American', heat_level: 3 },
    { name: 'Mapo Tofu', cuisine: 'Sichuan', heat_level: 6 }
  ]
end


def get_names(array)
  array.map {|food| food[:name]}
end
get_names(spicy_foods)


def spiciest_foods(food_array)
  food_array.filter { |food| food[:heat_level] >= 5 }
end
spiciest_foods(spicy_foods)

def print_spicy_foods(foods_array)
  foods_array.each do |food|
    puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{ '🌶' * food[:heat_level]}"
  end
end
print_spicy_foods(spicy_foods)

def get_spicy_food_by_cuisine(food_array, cuisine)
  food_array.find { |food| food[:cuisine] == cuisine }
end
get_spicy_food_by_cuisine(spicy_foods, "American")

def sort_by_heat(food_array)
  food_array.sort_by { |food| food[:heat_level]}
end
sort_by_heat(spicy_foods)

def print_spiciest_foods(food_array)
  super_spicy_food = spiciest_foods(spicy_foods)
  print_spicy_foods(super_spicy_food)
end
print_spiciest_foods(spicy_foods)

def average_heat_level(food_array)
  sum = food_array.sum { |food| food[:heat_level]}
  average = sum / food_array.length
end
average_heat_level(spicy_foods)























































# # given an array of spicy foods, **return an array of strings**
# # with the names of each spicy food
# def get_names(spicy_foods)
#   spicy_foods.map do |food|
#     food[:name]
#   end
# end

# puts get_names(spicy_foods)

# # given an array of spicy foods, **return an array of hashes** 
# # where the heat level of the food is greater than 5
# def spiciest_foods(spicy_foods)
#   spicy_foods.filter {|food| food[:heat_level] > 5}
# end

# puts spiciest_foods(spicy_foods)

# # given an array of spicy foods, **output to the terminal**
# # each spicy food in the following format: 
# # Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# # HINT: you can use * with a string to produce the correct number of 🌶 emoji. 
# # "hello" * 3 == "hellohellohello"
# def print_spicy_foods(spicy_foods)
#   spicy_foods.each do |food|
#     puts "#{food[:name]} (#{food[:cuisine]}) | Heat Level: #{'🌶' * food[:heat_level]}"
#   end
# end

# puts print_spicy_foods(spicy_foods)

# # given an array of spicy foods and a string representing a cuisine, **return a single hash**  
# # for the spicy food whose cuisine matches the cuisine being passed to the method
# def get_spicy_food_by_cuisine(spicy_foods, cuisine)
#   spicy_foods.find do |food|
#     food[:cuisine] == cuisine
#   end
# end

# get_spicy_food_by_cuisine(spicy_foods, "American")

# # Given an array of spicy foods, **return an array of hashes** 
# # sorted by heat level from lowest to highest
# def sort_by_heat(spicy_foods)
#   spicy_foods.sort_by! do |food|
#     food[:heat_level]
#   end
# end

# puts sort_by_heat(spicy_foods)

# # given an array of spicy foods, output to the terminal ONLY 
# # the spicy foods that have a heat level greater than 5, in the following format: 
# # Buffalo Wings (American) | Heat Level: 🌶🌶🌶
# # HINT: Try to use methods you've already written to solve this!
# def print_spiciest_foods(spicy_foods)
#   spiciest = spiciest_foods(spicy_foods)
#   print_spicy_foods(spiciest)
# end

# print_spiciest_foods(spicy_foods)

# # given an array of spicy foods, return an integer representing 
# # the average heat level of all the spicy foods in the array
# def average_heat_level(spicy_foods)
#   total_heat = 0
#   spicy_foods.each do |food|
#     total_heat += food[:heat_level]
#   end
#   total_heat / spicy_foods.length
# end
