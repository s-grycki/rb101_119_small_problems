=begin
Problem: Take an array of integers, multiply them together, divide by the number of
elements, and then print the result rounded to 3 decimal places

-Input: Array of integers
-Output: Product of all integers divided by length and rounded to 3 decimal places

-Rules:
- Assume all arrays have at least one integer
- All outputs shoyld be rounded to 3 places - even if they're zeroes

Examples:
show_multiplicative_average([3, 5])
show_multiplicative_average([6])
show_multiplicative_average([2, 5, 7, 11, 13, 17])

Data Structures:
Integer, Array

Algorithm:
SET val = 1
FOR each int IN array
  SET val = (int * val) / array.length.to_f.round(3)
END LOOP
RETURN last element

Code:
=end

# Alternate solution
=begin
def show_multiplicative_average(array)
  val = 1
  val = array.map { |int| ((val *= int) / array.length.to_f) }.last
  puts format('%.3f', val)
end
=end

def show_multiplicative_average(array)
  val = (array.inject(:*)) / array.length.to_f
  puts format('%.3f', val)
end

show_multiplicative_average([3, 5])                # => The result is 7.500
show_multiplicative_average([6])                   # => The result is 6.000
show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667