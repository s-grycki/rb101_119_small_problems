=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take an array and move the first element to the end of the array. Don't
mutate the original array
Input: Array of elements
Output: New array with first element at end 
Rules: (Also clarifies edge cases and questions)
  - Don't use Array#rotate(!)


EXAMPLES:
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Arrays

<====== THOUGHT PAD ======>

<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Create a copy of input array (arr_copy)
  - Set last_element to deleted first element of arr_copy
  - Push last_element to end of arr_copy

  FURTHER EXPLORATION: DO THE SAME FOR STRINGS, AND THEN INTEGERS

=end

def rotate_array(arr)
  arr_copy = arr.clone
  last_element = arr_copy.shift
  arr_copy.push(last_element)
end

def rotate_array(arr)
  arr.slice(1..-1).push(arr.slice(0))
end

p rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
p rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
p rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
p rotate_array(x) == [2, 3, 4, 1]   # => true
p x == [1, 2, 3, 4]                 # => true


def rotate_string(str)
  str.slice(1..-1).concat(str.slice(0))
end

p rotate_string('string')
p rotate_string('s')


def rotate_integer(int)
  int_array = rotate_string(int.to_s).to_i
end

p rotate_integer(13579)
p rotate_integer(7)
