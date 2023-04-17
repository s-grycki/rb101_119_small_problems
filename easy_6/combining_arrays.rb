=begin
Problem: Write a method taking two arrays as arguments and returns a new, single
array of all values. The final return should have no duplicate values 

- Input: Two arrays of values
- Output: One new array merged from input with duplicates erased

-Rules:
- No duplicates
- Return a new array

Examples:
merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]

Data Structures:
Arrays

Algorithm:
Merge the two arrays into one
Delete duplicate values
Return a new array

Code:
=end

# Alternate solution
=begin
def merge(array1, array2)
  array1.union(array2)
end
=end

def merge(array1, array2)
  array1.clone.push(array2).flatten.uniq
end


p merge([1, 3, 5], [3, 6, 9])