=begin
Problem: Take a grocery list as an array and convert it into an array with correct numbers
of each fruit

-Input: Nested array with fruit and number
-Output: Array with fruits listed number amount of times

-Rules:
- Return a flattend array

Examples:
buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

Data Structures:
Arrays, Integers, Strings

Algorithm:
FOR each array IN list
  array[0] * array[1]
RETURN array.flatten

Code:
=end

def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity }.flatten
end

p buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]])