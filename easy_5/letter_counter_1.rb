=begin
Problem: Write a method which takes a string with one or more space seperated words.
Return a hash which shows the number of words at different sizes. Words are any string
of characters that do not include a space

- Input: String of words seperated by spaces
- Output: Hash with word length as key and number of instances as value

-Rules:
- Words are seperated by spaces
- Words can contain any characters

Examples:
word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

Data Structures:
String, Array, Hash

Algorithm:
SET score = Hash.new(0)
SET string = array of words
LOOP over each element in words array
  SET hash key = length of word element
  SET hash value to +1 each time this key is ecountered
END LOOP
RETURN score

Code:
=end

=begin
def word_sizes(string)
  score = Hash.new(0)
  string.split.each do |word|
    score[word.length] += 1
  end
  score
end
=end

def word_sizes(string)
  string.split.each_with_object(Hash.new(0)) do |word, hash|
    hash[word.length] += 1
  end
end

p word_sizes('Four score and seven.')
p word_sizes('Hey diddle diddle, the cat and the fiddle!')
p word_sizes("What's up doc?")
p word_sizes('')