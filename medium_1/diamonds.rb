=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Display a diamond to the screen in an nxn grid, where n is an odd integer
Input: Odd integer
Output: Diamond of inputxinput dimensions
Explicit Rules: (Also clarifies edge cases and questions)
  - Assume input will always be odd

Implicit Rules:  


EXAMPLES:
diamond(1)

*

diamond(3)

 *
***
 *

 diamond(9)

    *
   ***
  *****
 *******
*********
 *******
  *****
   ***
    *


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Nested array

<====== THOUGHT PAD ======>
Lines are all printing in grouped rows - getting bigger until the middle value,
then it gets smaller until it's back to 1
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set diamond_char = '*'
  - Set diamond_arr = []

  POPULATE AND CREATE INNER ARRAYS
    - until counter (integer input) >= 1
      - Push diamond_char * counter in array onto array
      - counter -= 2
    - Return diamond_arr
    - 1 upto integer / 2 times
      - Append diamond_arr[idx] onto start of array
    - Return diamond_arr

  PRINT OUT THE CONTENTS OF EACH LINE TO SCREEN
    - Iterate over each array in diamond_arr
      - Iterate over each element in inner array and print to screen

=end

def diamond(integer)
  diamond_arr = create_array(integer)
  output_diamond(diamond_arr)
end

def create_array(integer)
  diamond_arr = []
  counter = integer

  loop do
    diamond_arr << [('*' * counter).center(integer)]
    break diamond_arr if 1 >= counter
    counter -= 2
  end
  lower_diamond(diamond_arr, integer)
end

def lower_diamond(diamond_arr, integer)
  arr_clone = diamond_arr.clone
  1.upto(integer / 2) do |idx|
    diamond_arr.unshift(arr_clone[idx])
  end
  diamond_arr
end

def output_diamond(diamond_arr)
  diamond_arr.each do |sub_arr|
    sub_arr.each { |star| puts star }
  end
end





diamond(9)
