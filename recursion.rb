puts "Exercise 1 - sum_to"
#
# Write a function sum_to(n) that uses recursion to calculate the sum
#from 1 to n (inclusive of n).
def sum_to(n)
  return nil if n < 1
  return n if n == 1
  sum_to(n-1) + n
end

  # Test Cases
puts  sum_to(5)==15# => returns 15
puts  sum_to(1)==1  # => returns 1
puts  sum_to(9)==45  # => returns 45
puts  sum_to(-8) ==nil # => returns nil



###############
###############

puts "Exercise 2 - add_numbers"
#
# Write a function add_numbers(nums_array) that takes in an array of
#Fixnums and returns the sum of those numbers. Write this method recursively.

def add_numbers(nums_array)
  return nums_array[0] if nums_array.length <= 1
  nums_array[0] + add_numbers(nums_array[1..-1])
end

  # Test Cases
puts  add_numbers([1,2,3,4]) == 10 # => returns 10
puts  add_numbers([3]) == 3 # => returns 3
puts  add_numbers([-80,34,7]) == -39 # => returns -39
puts  add_numbers([]) == nil # => returns nil


###############
###############
puts "Exercise 3 - Gamma Function"
#
# Let's write a method that will solve Gamma Function recursively.
#The Gamma Function is defined Γ(n) = (n-1)!.

def gamma_fnc(num)
  return nil if num < 1
  return 1 if (num) == 1
  (num-1)*gamma_fnc(num-1)
end

  # Test Cases
puts  gamma_fnc(0) == nil  # => returns nil
puts  gamma_fnc(1) == 1 # => returns 1
puts  gamma_fnc(4) == 6 # => returns 6
puts  gamma_fnc(8) == 5040 # => returns 5040


###############
###############
puts "Exercise 4 - Ice Cream Shop"
#
# Write a function ice_cream_shop(flavors, favorite) that takes in an
#array of ice cream flavors available at the ice cream shop, as well as
#the user's favorite ice cream flavor. Recursively find out whether or
#not the shop offers their favorite flavor.

def ice_cream_shop(flavors, favorite)
  return flavors[0] == favorite if flavors.length <= 1
  return true if flavors.pop == favorite
  ice_cream_shop(flavors, favorite)
end

  # Test Cases
puts  ice_cream_shop(['vanilla', 'strawberry'], 'blue moon') == false  # => returns false
puts  ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea') == true # => returns true
puts  ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio') == false # => returns false
puts  ice_cream_shop(['moose tracks'], 'moose tracks') == true # => returns true
puts  ice_cream_shop([], 'honey lavender') == false # => returns false


###############
###############
puts "Exercise 5 - Reverse"
#
# Write a function reverse(string) that takes in a string and returns it reversed.

def reverse(string)
  return string if string.length <= 1
  reverse(string[1..-1]) + string[0] 
end

  # Test Cases
puts  reverse("house") == "esuoh" # => "esuoh"
puts  reverse("dog") == "god" # => "god"
puts  reverse("atom") == "mota" # => "mota"
puts  reverse("q") == "q" # => "q"
puts  reverse("id") == "di" # => "di"
puts  reverse("") == "" # => ""
