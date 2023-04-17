=begin
Problem: Write a method taking an array as an argument and reverses the elements
in place. This should mutate the passed array

- Input: Array of elements
- Output: Same array but with each element reversed in order

-Rules:
- Strings represent single objects made up of character elements
- This means don't reverse elements that don't represent objects
- The first element and last element should swap places
- The second element and second to last element should swap places and so on
- Cannot use Array#reverse or Array#Reverse!

Examples:
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1] # true
list == [4, 3, 2, 1] # true
list.object_id == result.object_id # true

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"] # true
list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
reverse!(list) == ["abc"] # true
list == ["abc"] # true

list = []
reverse!(list) == [] # true
list == [] # true

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

def reverse!(list)
  int = times(list)
  index_swap(int, list)
  list
end

def times(list)
  list.length.even? ? list.length / 2 : (list.length - 1) / 2
end

def index_swap(int, list)
  pos_idx = 0
  neg_idx = -1

  int.times do
    list[pos_idx], list[neg_idx] = list[neg_idx], list[pos_idx]
    pos_idx += 1
    neg_idx -= 1
  end
end

list = [1,2,3,4]
result = reverse!(list)
p result == [4, 3, 2, 1] # true
p list == [4, 3, 2, 1] # true
p list.object_id == result.object_id # true

list = %w(a b e d c)
p reverse!(list) == ["c", "d", "e", "b", "a"] # true
p list == ["c", "d", "e", "b", "a"] # true

list = ['abc']
p reverse!(list) == ["abc"] # true
p list == ["abc"] # true

list = []
p reverse!(list) == [] # true
p list == [] # true