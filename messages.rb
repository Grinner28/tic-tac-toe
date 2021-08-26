module Messages
  def display_intro
    'Lets play tic-tac-toe'
  end

  def display_how_many_players
    'Are you playing with one or two human players?'
  end

  def display_ask_name
    'Plese enter your name'
  end

  def display_current_player
    "Current player is #{@currentplayer.name}."
  end

  def display_select
    "#{@currentplayer.name} please select a available space"
  end

  def display_select_error
    'That space is already taken. Please select an available space'
  end

  def display_win
    "Well done #{@currentplayer}, you win"
  end

  def display_tie
    'The match is a tie'
  end

  def display_replay
    'Would you like to play again?'
  end

  def display_invalid_input
    'Invalid input please try again'
  end
end
