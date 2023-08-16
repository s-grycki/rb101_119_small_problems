=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an integer as an argument and rotate the last n digits
Input: Integer, places to rotate
Output: Rotated integer
Rules: (Also clarifies edge cases and questions)
  - Rotating 1 digit results in original number returned
  - Assume n is always a positive integer


EXAMPLES:
rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array

<====== THOUGHT PAD ======>
It seems to just not run if given 1 as an argument
If 2 is given as an argument, then the last integer is shifted to 2nd to last
If more than 2, then multiple numbers shifted to place of n

We're taking n number of elements from the end of array and performing
rotation on this new array before pushing it back on
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Convert each integer to array elements
  - Pop n number of elements from input array
  - Rotate the first element in this array to the end
  - Push the rotated array onto the end of the input array
  - Flatten result into a single array
  - Return in integer format by using a string as a intermediate step

=end


def rotate_array(arr)
  arr.slice(1..-1).push(arr.slice(0))
end

def rotate_rightmost_digits(int, n)
  num_arr = int.digits.reverse
  rotated_elements = rotate_array(num_arr.pop(n))
  num_arr.push(rotated_elements).flatten
  num_arr.join.to_i
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

p rotate_rightmost_digits(735291, 1) == 735291
p rotate_rightmost_digits(735291, 2) == 735219
p rotate_rightmost_digits(735291, 3) == 735912
p rotate_rightmost_digits(735291, 4) == 732915
p rotate_rightmost_digits(735291, 5) == 752913
p rotate_rightmost_digits(735291, 6) == 352917
