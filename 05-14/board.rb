#need to require all files




class Board
  def initialize
     @board = (1..9).to_a

  end

  def show_board(board)
    puts "
    #{board[0]} | #{board[1]} | #{board[2]}
    ---------------
    #{board[3]} | #{board[4]} | #{board[5]}
    ---------------
    #{board[6]} | #{board[7]} | #{board[8]}
    "
    end


def open_space
      #replace a number with the placers character
      #make sure that the space is open
      open_space = []
      board.each do |x|
        if x.is_a?(Fixnum)
          open_space << x
        end
      end
      open_space
    end


    def win?
      WINS.any? do |x, y, z|
        @board[x] == @board[y] && @board[y] == @board[z]
    end


    def draw?
        @board.all? { |x| x.is_a? String }
  end



     def game_over?
        win? || draw?
      end


end
