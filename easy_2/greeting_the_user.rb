=begin
PROBLEM: Ask user for their name. Greet them. If they end with an "!"
then ask why they're screaming

  - Input: Name as string 
  - Output: greeting as string
  - Rules:
    - 

EXAMPLES:
What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

DATA STRUCTURE:

ALGORITHM:
  - Get name from the user
  - If name ends with !
    - Ask why we're screaming
  - else
    - Greet user

=end

print ">> What is your name? "
name = gets.chomp

if name.end_with?('!')
  puts "HELLO #{name[..-2].upcase}. WHY ARE WE SCREAMING?"
else
  puts "Hello #{name}."
end
