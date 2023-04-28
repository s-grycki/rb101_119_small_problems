=begin
Problem: Take a string, and return a new string in which every consonant is doubled.
Any character that isn't a consonant should be ignored

-Input: String
-Output: New string with every consonant character doubled

-Rules:
- Return a new string
- Only non-vowel alphabetics

Examples:
double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

Data Structures:
String, Array

Algorithm:
string.chars.map do |char|
  char * 2 if ['A-Za-z^AEIOUaeiou'].include?(char)
end.join

Code:
=end

VOWELS = 'AEIOUaeiou'
ARRAY = (('A'..'Z').to_a + ('a'..'z').to_a).reject { |char| VOWELS.include?(char) }

def double_consonants(string)
  string.chars.map { |char| ARRAY.include?(char) ? char*2 : char }.join
end

p double_consonants('String') == "SSttrrinngg"
p double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
p double_consonants("July 4th") == "JJullyy 4tthh"
p double_consonants('') == ""