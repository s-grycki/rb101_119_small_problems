=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take a sentence string and convert the integer words to their number equivalents
as a string of digits
Input: String of words
Output: String of words with number words replaced with numbers as strings
Explicit Rules: (Also clarifies edge cases and questions)
  - 

Implicit Rules:
  - Converted numbers should be seperated by spaces
  - Periods/punctuation should be preserved

EXAMPLES:
word_to_digit('Please call me at five five five one two three four. Thanks.')
 == 'Please call me at 5 5 5 1 2 3 4. Thanks.'


DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - Array(to split words), Hash(for conversions)

<====== THOUGHT PAD ======>
Hash for data conversions
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Set conversion hash to conversion values
  - Set array of integer words
  - Split each string word into array elements
  - Iterate over each word element in array
    - Check each word to see if it's included in int_words array
    - If so, then slice the word integer and convert with hash value
  - Return new array and join each element with space deleminator
=end

VALID_WORDS = %W(zero one two three four five six seven eight nine)
CONVERSION_HASH = {}
VALID_WORDS.each_with_index { |word, idx| CONVERSION_HASH[word] = idx.to_s }

def word_to_digit(string)
  string.split.map do |word|
    if VALID_WORDS.include?(word.split('.').join)
      original_word = word
      word = CONVERSION_HASH[word.split('.').join]
      original_word.end_with?('.') ? word + '.' : word
    else
      word
    end
  end.join(' ')
end




p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
