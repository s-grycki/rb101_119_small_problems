=begin
PROBLEM: Rnadomly generate a number 20..200 to represent Teddy's age and print out how old he is
  - Input: Random integer 20..200
  - Output: String of how old Teddy is
  - Rules:
    - 

EXAMPLES:
Teddy is 69 years old!

DATA STRUCTURE:

ALGORITHM:
  - Generate an integer between 20..200
  - Iterpolate this into a string
=end

def print_age(name = 'Teddy')
  puts "#{name} is #{Array(20..200).sample} years old!"
end

print_age
print_age('Shawn')
