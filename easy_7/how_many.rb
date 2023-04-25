=begin
Problem: Count the number of occurances of each element in an array as hash key/value pairs.
Words are case-sensitive

-Input: Array of strings
-Output: Hash with string keys and amount values

-Rules:
- Case-sensitive
- String is key. Number is value

Examples:
car => 4
truck => 3
SUV => 1
motorcycle => 2

Data Structures:
String, Array, Hash

Algorithm:
SET hash = Hash.new(0)
Within the array:
  count each occurance of a string
  hash[string] += 1
RETURN key/value pairs

Code:
=end

def count_occurrences(array)
  hash = Hash.new(0)
  array.each { |string| hash[string] += 1 }
  hash.each { |key, _| puts "#{key} => #{hash[key]}" }
end


vehicles = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)