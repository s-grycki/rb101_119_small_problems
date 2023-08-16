=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Rewrite the fibonacci method so it compiles results without recursion
Input: Integer as a fibonacci number
Output: Fibonacci number at nth place
Explicit Rules: (Also clarifies edge cases and questions)
  - 

Implicit Rules:
  - Need two variables to store current and last number
  - Need third variable for running total


EXAMPLES:
fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>

<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set first_number = 0
  - Set second_number = 1
  - If input == 1
    - Return first_number
  - else if input == 2
    - Return second_number
  - else
    - Set running_total = first_number + second_number
    - loop input integer times - 1
      - running_total = first_number + second_number
      - first_number = second_number
      - second_number = running_total
    - End loop
  - Return running_total
  

=end

def fibonacci(int)
  first_number = 0
  second_number = 1
  if int == 1
    return first_number
  elsif int == 2
    return second_number
  else
    running_total = first_number + second_number
    (int - 1).times do
      running_total = first_number + second_number
      first_number = second_number
      second_number = running_total
    end
  end
  running_total
end

def fibonacci(int)
  first, last = [0, 1]
  2.upto(int) do
    first, last = [last, first + last]
  end
  last
end

p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(100_001) # => 4202692702.....8285979669707537501
