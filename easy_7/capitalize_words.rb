=begin
Problem: Take a single string argument and return a new string with every first word of
the string capitalized

-Input: String of all lowercase words
-Output: New string with all first words capitalized

-Rules:
- Words are seperated by spaces
- Double quotes within single quotes are ignored

Examples:
word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'

Data Structures:
String, Array

Algorithm:
SET array = string.split
array.map do |word|
  capitalize first letter of word
END LOOP
RETURN array.join(' ')

Code:
=end

def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

# Alternate solution
=begin
def word_cap(string)
  string.split.map { |word| word[0].upcase + word[1..-1] }.join(' ')
end
=end


p word_cap('four score and seven')
p word_cap('the javaScript language')
p word_cap('this is a "quoted" word')