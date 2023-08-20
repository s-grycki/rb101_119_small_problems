# We started working on a card game but got stuck. Check out why the code 
# below raises a TypeError. Once you get the program to run and produce a sum, 
# you might notice that the sum is off: It's lower than it should be. Why is that?


# Given code
# cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]
# 
# deck = { :hearts   => cards,
#          :diamonds => cards,
#          :clubs    => cards,
#          :spades   => cards }
# 
# def score(card)
#   case card
#   when :ace   then 11
#   when :king  then 10
#   when :queen then 10
#   when :jack  then 10
#   else card
#   end
# end
# 
# # Pick one random card per suit
# 
# player_cards = []
# deck.keys.each do |suit|
#   cards = deck[suit]
#   cards.shuffle!
#   player_cards << cards.pop
# end
# 
# # Determine the score of the remaining cards in the deck
# 
# sum = deck.reduce(0) do |sum, (_, remaining_cards)|
#   remaining_cards.map do |card|
#     score(card)
#   end
# 
#   sum += remaining_cards.sum
# end
# 
# puts sum



# Corrected code
cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :jack, :queen, :king, :ace]

deck = { :hearts   => cards.clone,
         :diamonds => cards.clone,
         :clubs    => cards.clone,
         :spades   => cards.clone }

def score(card)
  case card
  when :ace   then 11
  when :king  then 10
  when :queen then 10
  when :jack  then 10
  else card
  end
end

# Pick one random card per suit

player_cards = []
deck.keys.each do |suit|
  cards = deck[suit]
  cards.shuffle!
  player_cards << cards.pop
end

# Determine the score of the remaining cards in the deck

sum = deck.reduce(0) do |sum, (_, remaining_cards)|
  remaining_cards.map! do |card|
    score(card)
  end

  sum += remaining_cards.sum
end

puts sum


# The error occured because remaining_cards was never reassigned to a new
# variable with the map method call returning a new array of transformed
# values. We could have assigned this to a new variable, but I just chose to
# use the mutating form of map

# The logical error originiates when the deck hash is being declared. All
# values are the same array object declared 4 times. This means that when
# calling the following mutating methods shuffle! and pop they will impact
# every declaration in the hash values. Assigning these elements to a variable
# won't work because the variable is just pointing to the same array object
# in memory. Alternatively, this could have been done non-destructively by
# adding a random card from the array to the player hand on each iteration.
# This would have worked as intended even if all the values point to the same
# array. But it's probably better that they be seperate objects for the sake
# of bug-proofing any additions to this game
