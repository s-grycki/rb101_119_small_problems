=begin
  PROBLEM: Prompt user for word or multiple words and give back
  number of characters. Spaces should be ignored
  Input: String of word(s)
  Output: String with number of characters in input
  Rules:
    - Don't count spaces

  EXAMPLES:
  Please write word or multiple words: walk
  There are 4 characters in "walk".

  DATA STRUCTURES:

  ALGORITHM:
    - Get string of word(s) from user
    - Delete space characters
    - Count the characters
    - Return a string with number
=end

print 'Please write word or multiple words: '
string = gets.chomp
string_size = string.delete(' ').length
puts "There are #{string_size} characters in \"#{string}\""
