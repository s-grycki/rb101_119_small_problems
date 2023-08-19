=begin
PROBLEM: (Start with inputs/outputs if confused. 
Read Problem -> See examples -> Ask questionss)
Take the contents of a text file and read the longest sentence based on the
number of words
Input: Text file to be read by program
Output: Longest sentence in file and number of words (string and integer)
Explicit Rules: (Also clarifies edge cases and questions)
  - Sentences may end in '.', '!', or '?'
  - Spaces and sentence ending characters only non-words

Implicit Rules:
  - 


EXAMPLES:



DATA STRUCTURES: (Update co-currently with algorithm, if needed)
  - 

<====== THOUGHT PAD ======>
Look in Standard API or classes for way to load files
<=========================>


Algorithm: (View as series of steps. Start high level on complex problems and
think about extracting to helper methods)
  - Load the file or enter a heredoc
  - Iterate over the entirety of the file in an array
    - Split each valid sentence into seperate elements based on ending character
  - Set longest_sentence to empty string
  - Iterate over each array
    - If current element size is greater than longest_sentence
      - Reassign element to longest_sentence

  - Print out longest sentence and number of characters

=end


speech = <<~HEREDOC
Four score and seven years ago our fathers brought forth
on this continent a new nation, conceived in liberty, and
dedicated to the proposition that all men are created
equal.

Now we are engaged in a great civil war, testing whether
that nation, or any nation so conceived and so dedicated,
can long endure. We are met on a great battlefield of that
war. We have come to dedicate a portion of that field, as
a final resting place for those who here gave their lives
that that nation might live. It is altogether fitting and
proper that we should do this.

But, in a larger sense, we can not dedicate, we can not
consecrate, we can not hallow this ground. The brave
men, living and dead, who struggled here, have
consecrated it, far above our poor power to add or
detract. The world will little note, nor long remember
what we say here, but it can never forget what they
did here. It is for us the living, rather, to be dedicated
here to the unfinished work which they who fought
here have thus far so nobly advanced. It is rather for
us to be here dedicated to the great task remaining
before us -- that from these honored dead we take
increased devotion to that cause for which they gave
the last full measure of devotion -- that we here highly
resolve that these dead shall not have died in vain
-- that this nation, under God, shall have a new birth
of freedom -- and that government of the people, by
the people, for the people, shall not perish from the 
earth.
HEREDOC

frankenstein = File.read('frankenstein.txt')


def longest_sentence(file)
  file = file.delete("\n").split(/[.!?]/)
  longest_sentence = ''

  file.each do |sent|
    longest_sentence = sent.strip if sent.strip.size > longest_sentence.size
  end

  [longest_sentence, longest_sentence.size]
end

def longest_sentence(file)
  file = file.delete("\n").split(/(?<=[.!?])/)
  longest_sentence = file.max_by { |sent| sent.strip.size }
  [longest_sentence.strip, longest_sentence.size]
end

p longest_sentence(speech)
p longest_sentence(frankenstein)
