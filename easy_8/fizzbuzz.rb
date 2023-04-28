=begin
Problem: Take two arguments: A starting integer and an ending integer. If a number is
divisble by 3, print out Fizz. If a number is divisible by 5, print out Buzz. If it's
divisible by both, print out FizzBuzz

-Input: Two integers, start and end values
-Output: Integers that aren't divisible by 3 or 5, Fizz, Buzz, and FizzBuzz

-Rules:
- If divisible by 3, just print Fizz
- If divisible by 5, just print Buzz
- If divisible by both, print FizzBuzz
- Else, print integer

Examples:
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz

Data Structures:


Algorithm:
FOR each VAL between int1 and int2
  IF val % 3 == 0
    val = 'Fizz'
  ELSIF val % 5 == 0
    val = 'Buzz'
  ELSE
    val
  val = 'FizzBuzz' if val % 3 == 0 && val % 5 == 0 


Code:
=end

def fizzbuzz(int1, int2)
  int1.upto(int2) do |val|
    print_value(val)
  end
end

def print_value(val)
  if val % 15 == 0
    puts 'FizzBuzz'
  elsif val % 5 == 0
    puts 'Buzz'
  elsif val % 3 == 0
    puts 'Fizz'
  else
    puts val
  end
end

fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz