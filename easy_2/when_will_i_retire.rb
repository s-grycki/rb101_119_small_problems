=begin
PROBLEM: Ask for user age and when they want to retire, then print out
the year and the year when they will retire and how many years left
  - Input: age as integer and age when wanting to retire
  - Output: String messages with years and years left until retirement
  - Rules:
    - 

EXAMPLES:
What is your age? 30
At what age would you like to retire? 70

It's 2016. You will retire in 2056.
You have only 40 years of work to go!

DATA STRUCTURE:

ALGORITHM:
  - Get age from user
  - Get age when wanting to retire from user
  - Print current year and year of retirement
  - Print how many years left until retirement

=end

YEAR = Time.now.year

print ">> What is your age? "
age = gets.chomp.to_i

print ">> At what age would you like to retire? "
retire = gets.chomp.to_i

years_left = retire - age

puts ">> It's #{YEAR}. You will retire in #{YEAR + years_left}"
puts ">> You only have #{years_left} years left until retirement!"
