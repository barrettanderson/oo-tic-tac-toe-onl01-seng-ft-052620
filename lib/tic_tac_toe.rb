class TicTacToe
  def initialize(board = nil)
    @board = board || Array.new(9, " ")
  end

  WIN_COMBINATIONS = [
      [0,1,2],
      [3,4,5],
      [6,7,8],
      [0,3,6],
      [1,4,7],
      [2,5,8],
      [0,4,8],
      [2,4,6]
    ]

    def display_board
      puts " #{@board[0]} | #{@board[1]} | #{@board[2]} "
      puts "-----------"
      puts " #{@board[3]} | #{@board[4]} | #{@board[5]} "
      puts "-----------"
      puts " #{@board[6]} | #{@board[7]} | #{@board[8]} "
      puts "-----------"
    end

    def input_to_index(user_input)
      user_input.to_i - 1
    end

    def move(position, player)
      @board[position] = player
    end

    def position_taken?(position)
      @board[position] == "X" || @board[position] == "O"
    end

    def valid_move?(valid)
      valid.between?(0,8) && !position_taken?(valid)
    end

    def turn_count
      number_of_turns = 0
      @board.each do |play|
        if play == "X" || play == "O"
          number_of_turns += 1
        end
      end
      number_of_turns
    end

    def current_player
      if turn_count % 2 == 0
        "X"
      else
        "O"
    end

end
