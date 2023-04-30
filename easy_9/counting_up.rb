=begin
Problem: Take an integer and return an array of all integers between 1 and input. Assume the
argument will always be a valid integer. Be sure to handle negative inputs

-Input: Positive integer representing end of range
-Output: Array of integers (1..input)

-Rules:
- Always an integer

Examples:
sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

Data Structures:
Integer, Array, Range

Algorithm:
SET range = (1..integer).to_a if positive
SET range = (integer..1)to_a.reverse if negative

Code:
=end

def sequence(integer)
  integer.positive? ? (1..integer).to_a : (integer..1).to_a.reverse
end

p sequence(5) == [1, 2, 3, 4, 5]
p sequence(3) == [1, 2, 3]
p sequence(1) == [1]
p sequence(-1)
p sequence(-5)