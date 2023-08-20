# A friend of yours wrote a number guessing game. The first version he
# shows you picks a random number between 1 and a provided maximum number
# and offers you a given number of attempts to guess it.

# However, when you try it, you notice that it's not working as expected.
# Run the code and observe its behavior. Can you figure out what is wrong?

# Given code
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

      # Try again:
      guess_number(max_number, max_attempts)
    end
  end
end

#guess_number(10, 3)


# Corrected code
def valid_integer?(string)
  string.to_i.to_s == string
end

def guess_number(max_number, max_attempts)
  winning_number = (1..max_number).to_a.sample
  attempts = 0

  loop do
    attempts += 1
    break if attempts > max_attempts

    input = nil
    until valid_integer?(input)
      print 'Make a guess: '
      input = gets.chomp
    end

    guess = input.to_i

    if guess == winning_number
      break puts 'Yes! You win.'
    else
      puts 'Nope. Too small.' if guess < winning_number
      puts 'Nope. Too big.'   if guess > winning_number

    end
  end
end

guess_number(10, 3)

# not stopping at n. New game every time

# The loop will not terminate if the user guesses the correct number. To fix
# this, we can simply add a break statement. A second issue occurs with the
# recursive call at the end of the guess_number method. It will start a new
# game anytime the user doesn't get the number on the first try. This can
# simply be removed and the program will run as intended for a set amount
# of times
