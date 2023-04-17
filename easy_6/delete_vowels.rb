=begin
Problem: Write a method that takes an array of strings and returns an array with
all of the vowels removed

- Input: Array of string elements
- Output: New array of string elements with vowels removed

-Rules:
- Only delete vowels (a, e, i, o, u)
- Return a new array

Examples:
remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']

Data Structures:
Arrays, Strings

Algorithm:
FOR each string IN array
  delete vowels IF in strings
END
RETURN new array

Code:
=end

VOWELS = %w(a e i o u A E I O U)

def remove_vowels(array)
  array.map do |string|
    string.chars.reject do |char|
      VOWELS.include?(char)
    end.join
  end
end

p remove_vowels(%w(abcdefghijklmnopqrstuvwxyz))
p remove_vowels(%w(green YELLOW black white))
p remove_vowels(%w(ABC AEIOU XYZ))