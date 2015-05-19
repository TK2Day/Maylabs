#classes
require './board'
require './player'
require './cpu'





class TicTacToe

  @Wins = [[0, 1, 2], [3, 4, 5], [6, 7, 8], [0, 4, 8],
 [2, 4, 6], [0, 3, 6], [1, 4, 7], [2, 5, 8]]


  def initialize(game_mode, player1, player2)

    @game_mode
    @turn_count = 1
    @player1 = player1
    @player2 = player2
  end

  def game_mode
    puts "Welcome to Tic Tac Toe!"
    puts "If you would like to play vs a player: Press 1"
    puts "If you would like to play vs a Computer: Press 2"
    puts "If you want to watch 2 computers duke it out: Press 3"
    puts "If you want to Quit: Press 4"
    input = gets.chomp.to_i
      until [1..4].include?(input)
        puts "Not a vaild input please try again"
        input = gets.chomp.to_i
      end
      if input == "1"
        play_human
      elsif input == "2"
        play_computer
      elsif  input == "3"
        play_cvc
      else input == "4"
        puts `clear`
        puts "Thanks for playing!"
        exit
      end
    end

    def choose_character
    puts "Player 1 please choose a Character either 'X' or 'O' "
    character = gets.chomp.upcase
    unless result == 'X' || result == 'O'
      puts "Sillywilly. You can only pick 'X' or 'O'"
      character = gets.chomp.upcase
    end
    puts "\nYou picked #{character}\n"

  end

    def play_human
     character = choose_character
     @player1 = Human.new(character)
     avail_piece = ["X", "O"].reject { |x| x == piece}
     @player2 = Human.new(avail_piece[0])
     start_game
    end

    def play_computer
      character = choose_character
      @player1 = Human.new(character)
      avail_piece = ["X", "O"].reject { |x| x == piece}
      @player2 = Cpu.new(avail_piece[0])
      start_game
    end

    def play_cvc
      # I tried using 'X' V here and it didn't work, find out why.
      @player1 = Cpu.new("X")
      @player2 = Cpu.new("O")
      start_game
    end

    def start_game
      random_player = [@player1, @player2].sample
      @starter = random_player


    end




def turn_count
  #When a player takes a turn turn count +1
  #player O will always go on odd turns
  turn_count = 0


end
