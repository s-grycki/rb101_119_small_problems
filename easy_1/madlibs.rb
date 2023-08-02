=begin
PROBLEM: Get a noun, a verb, an adverb, and an adjective and create a madlib
  - Input: 4 strings
  - Output: A new string with inputs inserted
  - Rules:
    - 
EXAMPLES:
  
DATA STRUCTURE:
  - Hash

ALGORITHM:
  - Ask user for the 4 inputs
  - Capture the inputs in a variable
  - Return the string

=end

answer_hash = { noun: '', verb: '', adverb: '', adjective: '' }

answer_hash.each do |type, input|
  print ">> Enter a #{type}: "
  input = gets.chomp
  answer_hash[type] = input
end

puts "Do you #{answer_hash[:verb]} your #{answer_hash[:adjective]}"  +
" #{answer_hash[:noun]} #{answer_hash[:adverb]}? That's hilarious!"
