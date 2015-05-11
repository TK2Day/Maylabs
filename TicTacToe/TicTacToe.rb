require 'pry'
require 'io/console'



WINS = [[0, 1, 2], [3, 4, 5], [6, 7, 8],
        [0, 3, 6], [1, 4, 7], [2, 5, 8],
        [0, 4, 8], [2, 4, 6],]


  board = (1..9).to_a



def show_board(board)
puts "
            ||         ||
            ||         ||
#{board(0)} ||#{board(1)}|| #{board(2)}
            ||         ||
   _________||_________||_________
   _________||_________||_________
            ||         ||
            ||         ||
#{board(3)} ||#{board(4)}|| #{board(5)}
            ||         ||
   _________||_________||_________
   _________||_________||_________
            ||         ||
            ||         ||
#{board(6)} ||#{board(7)}|| #{board(8)}
            ||         ||
"
end

def Xsymbol
puts "
     __   __
     \\ \\ / /
      \\ V /
       > <
      / . \\
     /_/ \\_\\

"
end

def Osymbol
  puts

  "
    ____
  / __ \\
  | |  | |
  | |  | |
  | |__| |
  \\____/
"
end




def winner?(board)
  puts "win?"
  WINS.any? do |i, j, k|
    # w.map { |x| board[x] }.uniq,length == 1
    if board[i] == board[j] && board[j] == board[k]
      return board[i]
    end
  end
end

def main_menu
 print "Hello and Welcome to TicTacToe!"
 puts "Here you can choose the mode you would like to play in!"
 puts "Press M for Multiplayer, Press E for Easy Mode with a Computer, and Press H for Hard mode!"
 puts "Press Q if you would like to Quit!"
  binding.pry
  input = STDIN.getch.upcase!

  if input == "M"
    play_multiplayer
  elsif input == "E"
    play_easy
  elsif input== "H"
    play_hard
  elsif input == "Q"
    exit
  end
end


def play_easy
 puts "Not done yet"
end


def play_hard
 puts "Either :c"

end


def choose_character
  puts "Would you like to play as 'X' or 'O'?"
  result_c = STDIN.getch.upcase
  unless result_c == 'X' || result_c == 'O'
    puts "You didn't choose a correct character please try again."
    result_c = STDIN.getch.upcase
  end
  puts "You entered #{result_c}!"
end



def take_turn(player, board)
  show_board(board)
  puts "Player #{player}: Please choose a spoot from 1 - 9, indicated on the board!"
  result = gets.chomp
  available = board.select { |x| x.is_a?(Fixnum) }
  until result =~ /^[0-9]$/ && available.include?(result.to_i)
    puts "You have to choose an available square!"
    result = gets.chomp
  end
  result.to_i - 1
end


end

def wincondition

end


def tictactoe(board)
  title
  player_1 = choose_character
  player_2 == 'X' ? 'O' : 'X'


  main_menu







end
