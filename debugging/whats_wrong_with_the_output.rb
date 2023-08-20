# Josh wants to print an array of numeric strings in reverse numerical order.
# However, the output is wrong. Without removing any code, 
# help Josh get the expected output.

arr = ["9", "8", "7", "10", "11"]
p arr.sort do |x, y|
    y.to_i <=> x.to_i
  end

# Expected output: ["11", "10", "9", "8", "7"] 
# Actual output: ["10", "11", "7", "8", "9"] 


# Corrected code
arr = ["9", "8", "7", "10", "11"]
p (arr.sort do |x, y|
    y.to_i <=> x.to_i
  end)

# Alternatively:
arr = ["9", "8", "7", "10", "11"]
p arr.sort { |x, y| y.to_i <=> x.to_i }

# Josh's overall logic was correct. Their program compared the integer
# equivalents of every element with the first and second block parameters
# swapping their normal order so it sorts in reverse. The problem is that
# this ignores an important precedence rule in Ruby: blocks have the lowest
# precedence and the do/end keywords have even lesser precedence than the
# brackets. The p call is binding more strongly to `arr.sort` in the given
# solution and completely ignoring the block, so it's only sorting string
# elements in acending order
