=begin
Problem: Take a string and return an array which contains every word from the string and the
length of the word as a single element

-Input: String of words
-Output: Array with words and length

-Rules:
- All words seperated by singe space
- All substrings of non-space characters is a word

Examples:
word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

word_lengths("") == []

Data Structures:
String, Array, Integer

Algorithm:
array = string.split
new_array = []
FOR each word IN array
  new_array.push(word + word.length)
RETURN new_array

Code:
=end

def word_lengths(string)
  string.split.map { |word| "#{word} #{word.length}" }
end

p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []