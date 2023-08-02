=begin
  PROBLEM: Use the multiply method and write another method that squares
  its argument
  Input: Integer
  Output: Input squared
  Rules:
    - Use multiply method

  EXAMPLES:
  square(5) == 25
  square(-8) == 64

  DATA STRUCTURES:

  ALGORITHM:
    -  
=end

def multiply(n1, n2)
  n1 ** n2
end

def square(int, pwr = 2)
  multiply(int, pwr)
end

p square(-8)
p square(-2, 3)
p square(-2, 4)

# Modified multiply to allow for any nth power
