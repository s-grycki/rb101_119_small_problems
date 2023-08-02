=begin
PROBLEM: Print a short line of text within a box
  - Input: String
  - Output: String inside of box
  - Rules:
    - Box should fit size of string

EXAMPLES:
print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

DATA STRUCTURE:

ALGORITHM:
  - Initialize string for top/bottom of box
  - Initialize string for top/bottom of padding
  - Initialize string with string interpolated within side padding
=end

def print_in_box(string)
  puts edges(string)
  puts padding(string)
  puts message(string)
  puts padding(string)
  puts edges(string)
end

def edges(string)
  "+-#{'-' * string.length}-+"
end

def padding(string)
  "| #{' ' * string.length} |"
end

def message(string)
  "| #{string} |"
end

print_in_box('To boldly go where no one has gone before.')
print_in_box('')
