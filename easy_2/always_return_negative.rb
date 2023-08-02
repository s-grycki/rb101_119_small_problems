=begin
PROBLEM: Take an integer and return the positive if it's a negative. Self if
negative or 0

  - Input: Integer
  - Output: Self or negative representation if positive
  - Rules:
    - 

EXAMPLES:
negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

DATA STRUCTURE:


ALGORITHM:
  - Get integer from user
  - If integer is positive
    - Convert value to negative
  - Else
    - Return original input

=end

def negative(int)
  int.positive? ? -int : int
end

p negative(5) == -5
p negative(-3) == -3
p negative(0) == 0      # There's no such thing as -0 in ruby
