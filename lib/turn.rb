board = [" ", " ", " ", " ", " ", " ", " ", " ", " "]

#display-board
def display_board(board)
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
    puts "-----------"
    puts "   |   |   "
  end
display_board(board)

#valid-move
def valid_move?(board, index)
  if index < 0 || index > 8
    false
  else
    if position_taken?(board,index) == true
      false
    else
      true
    end
  end
end

#position taken
def position_taken?(board,index)
  if board[index] == " " || board[index] == "" || board[index] == nil
    false
  else
    true
  end
end

#move
def move(board, index , player_character = "X")
  board[index] = player_character
  end

  #input to index
  def input_to_index(input)
    input.to_i - 1
    index = input.to_i - 1
    return index
    end
