=begin
PROBLEM: Return true if number's absolute value is odd
  - Input: Integer
  - Output: Boolean based on if integer is odd
  - Rules:
    - Input can be positive, negative, or zero
    - Absolute value means evaluation must be done on positive integer
    - Don't use #odd?/#even?

EXAMPLES:
  puts is_odd?(2)    # => false
  puts is_odd?(5)    # => true
  puts is_odd?(-17)  # => true
  puts is_odd?(-8)   # => false
  puts is_odd?(0)    # => false
  puts is_odd?(7)    # => true  

DATA STRUCTURE:

ALGORITHM:
  - Set integer to absolute value equivalent
  - If integer is odd
    - return true
  - If integer is even
    - return false

=end

def is_odd?(int)
  int.abs.remainder(2) != 0
end

puts is_odd?(2)    # => false
puts is_odd?(5)    # => true
puts is_odd?(-17)  # => true
puts is_odd?(-8)   # => false
puts is_odd?(0)    # => false
puts is_odd?(7)    # => true
