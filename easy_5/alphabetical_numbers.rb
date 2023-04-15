=begin
Problem: Write a method that takes an array (0..19) and returns an array of
these integers sorted based on the English words for each number

- Input: Array (0..19)
- Output: Array sorted by English name order

-Rules:
- 20 integers to sort
- The two arrays have different orders
- Return a new array

Examples:
alphabetic_number_sort((0..19).to_a) == [
  8, 18, 11, 15, 5, 4, 14, 9, 19, 1, 7, 17,
  6, 16, 10, 13, 3, 12, 2, 0
]

Data Structures:
Arrays, Integers

Algorithm:
SET WORD_ARRAY = Number names
FOR each integer IN array
  SET integer = WORD_ARRAY value sorted by name
END LOOP
RETURN new array

Code:
=end

WORD_HASH = { 0 => "zero", 1 => "one", 2 => "two", 3 => "three",
  4 => "four", 5 => "five", 6 => "six", 7 => "seven",
  8 => "eight", 9 => "nine", 10 => "ten", 11 => "eleven",
  12 => "twelve", 13 => "thirteen", 14 => "fourteen", 15 => "fifteen",
  16 => "sixteen", 17 => "seventeen", 18 => "eighteen", 19 => "nineteen"
}

def alphabetic_number_sort(array)
  i = -1
  word_array = array.map do |num|
    i += 1
    num = WORD_HASH[i]
  end
  string_to_number(word_array.sort)
end

def string_to_number(array)
  array.map { |word| word = WORD_HASH.key(word) }
end

p alphabetic_number_sort((0..19).to_a)