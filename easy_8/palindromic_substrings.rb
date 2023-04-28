=begin
Problem: Take a string and return an array of all substrings that are palindromic.
The return value should be aranged in the same order as the substrings appear in the string.
Duplicate palindromes should be represented multiple times 

-Input: String
-Output: Array of palindrome substrings

-Rules:
- Ordered from appearance in string
- Pay attention to all characters
- Pay attention to case
- Palindromes are at least two characters

Examples:
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]

Data Structures:
String, Array

Algorithm:
SET all_substrings = all possible substrings
SET results = Array.new
FOR each substring IN all_substrings
  PUSH substring onto results if substring is a palindrome
    => substring == substring.reverse && substring.length > 1
END FOR LOOP
RETURN results 


Code:
=end

def palindromes(string)
  substrings(string).select do |substring|
    substring == substring.reverse && substring.length > 1
  end
end

def substrings(string)
  string.length.times.with_object([]) do |idx,array|
    array << leading_substrings(string[idx, string.length])
  end.flatten
end

def leading_substrings(string)
 string.chars.map.with_index { |_,idx| string[0..idx] }
end

p palindromes('abcd') == []
p palindromes('madam') == ['madam', 'ada']
p palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
p palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]