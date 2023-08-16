=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an integer and rotate it a maximum number of times by keeping 1 digit in
places after the first rotation, then 2, and so on until a rotation is performed
with the final 2 digits rotated
Input: Integer
Output: Integer with maximum number of rotations
Rules: (Also clarifies edge cases and questions)
  - Do not have to handle multiple 0s
  - A rotation means taking the eligable leading number and placing it a the end

EXAMPLES:
max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Arrays

<====== THOUGHT PAD ======>
Increase number of of fixed digits in front by 1 until the last rotation is
performed with only 2 digits
Number of rotations is 1 minus length of integer
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Place each integer into an array
  - Rotate leading element onto end of array
  - Fix first element in place
  - Rotate the remaining digits
  - Fix first 2 elements in place
  - Rotate the remaining digits
  ... Do this until last 2 digits swapped (last digit can't rotate anything)

  - Set idx = 0
  - Loop for the length of the input integer
    - Slice the array from idx..end of array
    - Rotate the leading element onto the end of this sliced array
    - Push this array back onto the original array
  - Return new array as integer


=end



def rotate_array(arr)
  arr = arr.slice(1..-1).push(arr.slice(0))
end

def rotate_rightmost_digits(int, size)
  num_arr = int.digits.reverse
  rotated_elements = rotate_array(num_arr.pop(size))
  num_arr.push(rotated_elements).flatten
  num_arr.join.to_i
end

def max_rotation(int)
  size = int.to_s.size
  size.times do
    int = rotate_rightmost_digits(int, size)
    size -= 1
  end
  int
end


p max_rotation(735291) == 321579
p max_rotation(3) == 3
p max_rotation(35) == 53
p max_rotation(105) == 15 # the leading zero gets dropped
p max_rotation(8_703_529_146) == 7_321_609_845
