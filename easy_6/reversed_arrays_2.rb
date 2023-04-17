=begin
Problem: Write a method taking an array as an argument and reverses the elements
in place. This should NOT mutate the original array

- Input: Array of elements
- Output: New array with same elements reversed in order

-Rules:
- Strings represent single objects made up of character elements
- This means don't reverse elements that don't represent objects
- The first element and last element should swap places
- The second element and second to last element should swap places and so on
- Cannot use Array#reverse or Array#Reverse!
- Do not use the methods you wrote in the last exercise

Examples:
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true

Data Structures:
Array, string, integer

Algorithm:
IF array.even? then do element.size/2 times
IF array.odd? then do (element.size - 1) / 2 times
  SET positive_idx = 0
  SET negative_idx = -1
  GET object at positive_idx
  GET object at negative_idx
  SET object at positive_idx, object at negative_idx = 
  object at negative_idx, object at positive_idx
  positive_idx += 1
  negative_idx -= 1
RETURN mutated array

Code:
=end

# Alternate answer
=begin
def reverse(array)
  new_array = array.clone
  new_array.each_with_index do |_, idx|
    new_array[idx] = array[-(idx + 1)]
  end
end
=end

def reverse(array)
  array.each_with_object([]) do |element, new_array|
    new_array.unshift(element)
  end
end

p reverse([1,2,3,4]) == [4,3,2,1]          # => true
p reverse(%w(a b e d c)) == %w(c d e b a)  # => true
p reverse(['abc']) == ['abc']              # => true
p reverse([]) == []                        # => true

p list = [1, 3, 2]                      # => [1, 3, 2]
p new_list = reverse(list)              # => [2, 3, 1]
p list.object_id != new_list.object_id  # => true
p list == [1, 3, 2]                     # => true
p new_list == [2, 3, 1]                 # => true