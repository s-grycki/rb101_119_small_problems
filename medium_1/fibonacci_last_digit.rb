=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Return the last digit in the Fibonacci sequence with a string message saying
the place of the number and the number itself after the last digit
Input: Integer representing Fibonacci number
Output: String message
Explicit Rules: (Also clarifies edge cases and questions)
  - Return a message how many digits are in number if greater than 100 

Implicit Rules:
  - Only return last digit if greater than 10,000,000
  - Only return digit size if greater than 100


EXAMPLES:
fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Arrays(for fibonacci computation and getting length of integer)

<====== THOUGHT PAD ======>
The last digit in the fibonacci sequence repeats every 60 times
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  GET LAST FIBONACCI NUMBER
    - Set first, last to array [0, 1]
    - From 2 to the integer input
      - Reassign first, last to [last, first + last]
    - Return last

  ADD SUFFIX IF LESS THAN 101 INPUT OR GET LENGTH
    - If integer <= 100
      - Convert input integer to string
      - If string ends with 11, 12, or 13
        - Append th
      - If string ends with 1
        - Append st
      - If string ends with 2
        - Append nd
      - If string ends with 3
        - Append rd
      - Else
        - Append th

    - Else
      - Set integer to string with each element in array
      - Count the number of elements

    - Return properly formated string output

=end


def fibonacci_last(integer)
  last_fib_num = get_last_number(integer)
  last_fib_int = get_last_fib_int(last_fib_num)
  if integer <= 100
    formated_integer = smaller_number(integer.to_s)
    puts "# -> #{last_fib_int} (The #{formated_integer} Fibonacci number is #{last_fib_num})"
  elsif integer <= 10_000_000
    formated_integer = larger_number(last_fib_num)
    puts "# -> #{last_fib_int} (This is a #{formated_integer} digit number)"
  else
    puts "# -> #{last_fib_int}"
  end
end

def get_last_number(integer)
  integer = integer % 60 if integer > 10_000_000 # for optimization
  first, last = [0, 1]
  2.upto(integer) do
    first, last = [last, first + last]
  end
  last
end

def get_last_fib_int(last_fib_num)
  last_fib_num % 10
end

def smaller_number(integer_string)
  last_two = integer_string[-1..-2]
  return (integer_string + 'th') if %w(11 12 13).include?(last_two)
  case integer_string
  when '1' then integer_string + 'st'
  when '2' then integer_string + 'nd'
  when '3' then integer_string + 'rd'
  else integer_string + 'th'
  end
end

def larger_number(last_fib_num)
  last_fib_num.digits.size.to_s
end


fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4
