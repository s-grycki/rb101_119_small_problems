=begin
PROBLEM: Ask for bill amount and tip rate. Display tip and total with tip
  - Input: dollar amount
  - Output: tip amount and total
  - Rules:
    - Ignore first character if user inputs $

EXAMPLES:
What is the bill? 200
What is the tip percentage? 15

The tip is $30.0
The total is $230.0

DATA STRUCTURE:

ALGORITHM:
  - Ask user for bill
  - Ask for tip percentage

  - If bill starts with $
    - delete the character

  - If tip ends with %
    - delete the character

  - calculate tip as bill * (tip / 100)
  - calculate total as tip + bill

  - Display tip
  - Display total

=end

puts ">> What is the bill?"
bill = gets.chomp
bill.slice!(0) if bill.start_with?('$')
bill = bill.to_f

puts ">> What is the tip percentage?"
tip = gets.chomp
tip.slice!(-1) if tip.end_with?('%')
tip = tip.to_f

tip = bill * (tip / 100)
total = tip + bill

puts ">> The tip is #{format("$%.2f",tip)}"
puts ">> The total is #{format("$%.2f", total)}"
