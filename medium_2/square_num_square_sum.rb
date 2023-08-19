=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Find the difference between the square of the sum of the first n positive
integers and the sum of the squares of the first n positive integers
Input: Integer
Output: Sum of all numbers (1..n) squared minus square if all numbers (1..n) added 
Explicit Rules: (Also clarifies edge cases and questions)
  - 

Implicit Rules:
  - 


EXAMPLES:
sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
sum_square_difference(10) == 2640
sum_square_difference(1) == 0
sum_square_difference(100) == 25164150


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array (to perform convienent calculations)

<====== THOUGHT PAD ======>
Use a range 1..n
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set range 1..n to array and sum
  - Take the sum and square it
  - Set range 1..n to array and square each number
  - Sum each element in the array
  - Subtract the difference between these two numbers and return it

=end

def sum_square_difference(int)
  squared_elements = ((1..int).to_a.sum) ** 2
  summed_elements = (1..int).to_a.map { |num| num ** 2 }.sum
  squared_elements - summed_elements
end

p sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
p sum_square_difference(10) == 2640
p sum_square_difference(1) == 0
p sum_square_difference(100) == 25164150
