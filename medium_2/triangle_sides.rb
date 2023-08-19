=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take the 3 sides of a triangle as numbers and return a symbol stating what
kind of triangle it is
Input: 3 numbers(integers or floats)
Output: Symbol of triangle type
Explicit Rules: (Also clarifies edge cases and questions)
  - equilateral triangles have 3 sides of same length
  - isosceles triangles have 2 sides of equal length
  - scalene have 3 different length sizes
  - The sum of the two shortest sides must be greater than the length of
  the longest side
  - All sides must have length greater than 0
  - If either of the two above are false, it's invalid (:invalid)

Implicit Rules:
  - 


EXAMPLES:
triangle(3, 3, 3) == :equilateral
triangle(3, 3, 1.5) == :isosceles
triangle(3, 4, 5) == :scalene
triangle(0, 3, 3) == :invalid
triangle(3, 1, 1) == :invalid


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (to hold numbers and get max/sum lower two)

<====== THOUGHT PAD ======>

<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set num_array to array of input numbers
  - If any elements in num_array are 0 or less OR
  the 2 minimum numbers are less than the max number
    - Return :invalid
  - If all numbers in num_array are the same
    - Return :equilateral
  - If 2 numbers are the same
    - Return :isosceles
  - If all numbers different
    - Return :scalene

  - Set first_num = num_array.first
  - Iterate through each number in num_array
    - ALL numbers == first_num (all 3)
    - ANY numbers[1..-1] == first_num (1 match)
      - Falsy (no match) 


=end

def triangle(num1, num2, num3)
  num_array = [num1, num2, num3]

  if num_array.any? { |num| num <= 0 } || num_array.min(2).sum <= num_array.max
    return :invalid
  end

  first_num = num_array.first
  if num_array.all? { |num| num == first_num }
    :equilateral
  elsif num_array[1..-1].any? { |num| num == first_num }
    :isosceles
  else
    :scalene
  end
end



p triangle(3, 3, 3) == :equilateral
p triangle(3, 3, 1.5) == :isosceles
p triangle(3, 4, 5) == :scalene
p triangle(0, 3, 3) == :invalid
p triangle(3, 1, 1) == :invalid
