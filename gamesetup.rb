require_relative 'board'
require_relative 'players'
require_relative 'messages'

puts display_intro()

puts display_how_many_players()

# Inital setup
# Display a welcome message
# Ask if game will be 1 or 2 human players?
# If 2 players
#    Prompt please enter player 1s name and create player with said name
#    Prompt please enter player 2s name and create player with said name
 
# If 1 human player
#   Prompt please enter your name and create player with said name
#    Create computer player

# Assigning first and second player
#    Randomly select who will go first
#    Assign first player the symbol X
#    Assign second player the symbol O
#    Set first as current player