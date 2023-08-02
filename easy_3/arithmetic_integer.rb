=begin
  PROBLEM: Prompt user for two positive integers. Print the following 6
  operations on them
  Input: Two integers
  Output: 6 calculations from input
  Rules:
    - Don't worry about validating input

  EXAMPLES:
  ==> Enter the first number:
  23
  ==> Enter the second number:
  17
  ==> 23 + 17 = 40
  ==> 23 - 17 = 6
  ==> 23 * 17 = 391
  ==> 23 / 17 = 1
  ==> 23 % 17 = 6
  ==> 23 ** 17 = 141050039560662968926103

  DATA STRUCTURES:
  Array

  ALGORITHM:
    - Get two integers from user
    - Iterate 6 times
      - Print the result of each operation
=end

def prompt(input)
  puts("==> #{input}")
end

def values(string)
  prompt("Enter the #{string} value:")
  gets.chomp.to_i
end

int1 = values('first')
int2 = values('second')

%i[+ - * / % **].each do |op|
  prompt("#{int1} #{op} #{int2} = #{[int1, int2].inject(op)}")
end





def print_results(num_array)
  [:+, :-, :*, :/, :%, :**].each do |op|
    puts "==> #{num_array.first} #{op} #{num_array.last} = " + 
    "#{num_array.inject(op)}"
  end
end

def get_numbers
  %w(first second).each_with_object([]) do |time, arr|
    puts "==> Enter the #{time} number:"
    arr << gets.chomp.to_i.abs
  end
end

num_array = get_numbers
print_results(num_array)
