# We wrote a neutralize method that removes negative words from sentences.
# However, it fails to remove all of them. What exactly happens?

# Given code
def neutralize(sentence)
  words = sentence.split(' ')
  words.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.

# Corrected code
def neutralize(sentence)
  words = sentence.split(' ')
  words_copy = words.clone
  words_copy.each do |word|
    words.delete(word) if negative?(word)
  end

  words.join(' ')
end

def negative?(word)
  [ 'dull',
    'boring',
    'annoying',
    'chaotic'
  ].include?(word)
end

puts neutralize('These dull boring cards are part of a chaotic board game.')
# Expected: These cards are part of a board game.
# Actual: These boring cards are part of a board game.


# The reason this code doesn't run as expected is because it's mutating the
# caller while iterating over it. When 'dull' was deleted it completely
# skipped over 'boring' because that was now the index 1 element in the array
# while the iterator was looking for the index 2 element. The way to solve this
# is by creating a clone of the array and iterating over each element in this
# instead to delete matching words from the array. As an alternative, we could
# mutate the object from outside the block with a method call and remove
# individual elements. This could be done with the select!/reject! methods.
# The lesson is: Don't mutate the called object from within the block while
# iterating over it
