=begin
Problem: Given an array of words, write a program that prints out groups of words which are
anagrams 

-Input: Array of words
-Output: Arrays of grouped anagrams

-Rules:
- Anagrams are words with the same letters in a different order

Examples:
["demo", "dome", "mode"]
["neon", "none"]
#(etc)

Data Structures:
Strings, Arrays

Algorithm:
Iterate over each word
  save every character of current word into variable for checking
  check if characters of current word == characters of checked word
    add all matches into a new array and print them out

Code:
=end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
  'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
  'flow', 'neon']

  # Alternate Solution
=begin
  result = {}

  words.each do |word|
    key = word.chars.sort.join
    if result.has_key?(key)
      result[key] << word
    else
      result[key] = [word]
    end
  end
  
  result.each_value { |arr| p arr }
=end

words.map do |outer_word|
  words.select do |inner_word|
    inner_word if inner_word.chars.difference(outer_word.chars) == [] 
  end.sort
end.uniq.each { |arr| p arr }