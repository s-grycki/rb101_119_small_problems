=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take 3 angles of a triangle as integers and return the correct symbol
Input: 3 triangle degree sides as integers
Output: Symbol 
Explicit Rules: (Also clarifies edge cases and questions)
  - Right triangles have one 90 degree angle
  - Acute triangles have all 3 less than 90 degrees
  - Obtuse triangles have one angle greater than 90 degrees
  - The sum of angles must be 180 and all angles must be greater than 0
  otherwise it's invalid
  - Assume all inputs are integers
  - Assume arguments specified in degrees

Implicit Rules:
  - 


EXAMPLES:
triangle(60, 70, 50) == :acute
triangle(30, 90, 60) == :right
triangle(120, 50, 10) == :obtuse
triangle(0, 90, 90) == :invalid
triangle(50, 50, 50) == :invalid


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (to contain integer inputs and get values)

<====== THOUGHT PAD ======>
Similar to last problem. Consider order for checks (all checks first)
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set num_array to array of input integers
  - If sum of num_array isn't 180 OR any angle is less than or equal to 0
    - Return :invalid
  - If all integers in num_array are less than 90
    - Return :acute
  - If any integer in num_array is exactly 90
    - Return :right
  - Else
    - Return :obtuse

=end

def triangle(num1, num2, num3)
  num_array = [num1, num2, num3]
  return :invalid if num_array.sum != 180 || num_array.any? { |num| num <= 0 }

  if num_array.all? { |num| num < 90 }
    :acute
  elsif num_array.any? { |num| num == 90 }
    :right
  else
    :obtuse
  end
end


p triangle(60, 70, 50) == :acute
p triangle(30, 90, 60) == :right
p triangle(120, 50, 10) == :obtuse
p triangle(0, 90, 90) == :invalid
p triangle(50, 50, 50) == :invalid
