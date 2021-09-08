[![Run on Repl.it](https://repl.it/badge/github/Grinner28/tic-tac-toe)](https://repl.it/github/Grinner28/tic-tac-toe)

>> tic-tac-toe

This is an Odin Project to creat a tic tac toe game using Ruby that runs in terminal

How the game works
A 3x3 grid is display 
 >>Need a board class that consist of an array consisting of 9 spaces
 >>Need a display function that takes the current state of the board array and displays it in a 3x3 grid
 >> Grid spaces are numbered 1-9

Inital setup
>>Display a welcome message
>>Ask if game will be 1 or 2 human players?
>>If 2 players
    >>Prompt please enter player 1s name and create player with said name
    >>Prompt please enter player 2s name and create player with said name
 
 >> If 1 human player
    >>Prompt please enter your name and create player with said name
    >>Create computer player

>>Assigning first and second player
    >>Randomly select who will go first
    >>Assign first player the symbol X
    >>Assign second player the symbol O
    >>Set first as current player
      

Two players take it in turns to select an avaiable space
  >> Player one is always a person
  >> Need to prompt for the number of human players
  >> If 1 human set player 2 as a computer player
  >> Need a class for each player that holds their name and their symbol
  >> Player two can be either a computer or person
  >> Randomise who goes first
  >> First to go is assigned the X symbol
  >> Second to go is assigned the O symbol

Grid selection by human
  >> Prompt player to enter which square they want to select by entering its resepctive number
  >> Check that the grid space is not already occupied by a player
  >> If grid is not already occupied chages the number to the players symbol
  >> Check for a winner and delcare the winner if their is one
  >> Check if all spaces are occupied if so declare a tie
  >> If neither occur move to the next players turn

Playing the game
>> Promt current player to please select an available space by entering a number corresponding to that square
>> Check that space is not already occupied
>> if so request a differnt space
>> if not assign symbol of current player to that space in the board array
>> refersh board display show update game state
>> if round is >= 5 check if the move is a winning move
>> if round is <5 change current player to other player
>> if so indicate that current player is the winner
>> promt for a rematch
>> if no winner check if round == 10 and promt that match is a tie
>> promt for a rematch
>> if not switch current player to other player and continue game

Checking for a winner



A player wins by owning 3 spaces that form a line, inclduing diagonals  
