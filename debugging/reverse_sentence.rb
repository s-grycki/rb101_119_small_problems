# The reverse_sentence method should return a new string with the words of 
# its argument in reverse order, without using any of Ruby's built-in 
# reverse methods. However, the code below raises an error. 
# Change it so that it behaves as expected.

# Given code
# def reverse_sentence(sentence)
#   words = sentence.split(' ')
#   reversed_words = []
# 
#   i = 0
#   while i < words.length
#     reversed_words = words[i] + reversed_words
#     i += 1
#   end
# 
#   reversed_words.join(' ')
# end
# 
# p reverse_sentence('how are you doing')
# expected output: 'doing you are how'



def reverse_sentence(sentence)
  words = sentence.split(' ')
  reversed_words = []

  i = 0
  while i < words.length
    reversed_words.unshift(words[i])
    i += 1
  end

  reversed_words.join(' ')
end

p reverse_sentence('how are you doing')
# expected output: 'doing you are how'

# The given code was raising a type error because it was trying to reassign an
# array to the concatenation of a string with an array. This highlights the
# importance of knowing what data types we're working with as we write our
# code. The solution is to unshift every associated string element per loop
# onto the empty array. This will give us the expected output. We could have
# also wrapped the word element in an array so that both values are the correct
# data types
