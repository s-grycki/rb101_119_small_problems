=begin
PROBLEM: Display a right triangle of stars with length and size based on a
given integer. Allow the triangle to start in any corner
  - Input: Integer, String represeting corner start
  - Output: Rows of stars from 0 to integer
  - Rules:
    - Top line should be empty
    - Allow stars to begin printing from any corner

EXAMPLES:
triangle(5)

    *
   **
  ***
 ****
*****

DATA STRUCTURE:


ALGORITHM:
  - when top right 
    - Iterate from 0 to the given integer
      - output spaces * (integer - counter)
      - output spaces * (integer - counter) + (stars * counter)

  - when top left
    - Iterate from 0 to the given integer
      - output stars

  - when bottom right
    - output spaces * counter
    - output stars * (integer - counter)

  - when bottom left
    - output stars * (integer - counter)
    - output spaces * counter 
=end



def triangle(int, corner = 'tr')
  case corner
  when 'tr' then top_right(int)
  when 'tl' then top_left(int)
  when 'br' then bottom_right(int)
  when 'bl' then bottom_left(int)
  end
end

def top_right(int)
  0.upto(int) do |i|
    spaces = ' ' * (int - i)
    stars = '*' * i
    puts spaces + stars
  end
end

def top_left(int)
  0.upto(int) do |i|
    stars = '*' * i
    puts stars
  end
end

def bottom_right(int)
  0.upto(int) do |i|
    spaces = ' ' * i
    stars = '*' * (int - i)
    puts spaces + stars
  end
end

def bottom_left(int)
  0.upto(int) do |i|
    spaces = ' ' * i
    stars = '*' * (int - i)
    puts stars + spaces
  end
end

triangle(5)
triangle(5, 'tl')
triangle(5, 'br')
triangle(5, 'bl')
