=begin
Problem: Take a string containing one or more words, and return the given string with
words containing 5 or more characters reversed

-Input: String
-Output: New string with every word in reverse order if length >= 5

-Rules:
- Mutate the value if greater than 5

Examples:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS

Data Structures:
String, Array

Algorithm:


Code:
=end

def reverse_words(string)
  string.split.each { |word| word.length >= 5 ? word.reverse! : word }.join(' ')
end

puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS