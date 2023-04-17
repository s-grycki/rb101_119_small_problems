=begin
Problem: Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as a number. Assume the argument will
always be greater than or equal to 2

- Input: Integer greater than 2 that represents Fibonacci number
- Output: Fibonacci number first occuring at index of input

-Rules:
- Input will always be greater than or equal to 2
- First 2 Fibonacci numbers are always 1
- Current Fibonacci number is sum of previous 2
- Output will always be assumed greater than or equal to 7
- First Fibonacci number has index of 1 (as opposed to 0)

Examples:
find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

Data Structures:
Array, Integers

Algorithm:
SET array = [1, 1]
idx = 1
UNTIL array[idx - 1] == integer.size
  array >> array[idx - 1] + array[idx]
  idx += 1
END LOOP
RETURN idx + 1


Code:
=end

def find_fibonacci_index_by_length(integer)
  array = [1, 1]
  idx = 1
  until (array[idx] / (10**(integer - 1))) == 1
    array << array[idx - 1] + array[idx]
    idx += 1
  end
  idx + 1
end

p find_fibonacci_index_by_length(2)
p find_fibonacci_index_by_length(3)
p find_fibonacci_index_by_length(10)
p find_fibonacci_index_by_length(100)
p find_fibonacci_index_by_length(1000)
p find_fibonacci_index_by_length(10000)