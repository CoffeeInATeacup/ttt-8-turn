require_relative "../lib/turn"
  
  board = [" "," "," "," "," "," "," "," "," "]

  def display_board(board)
    puts " #{board[0]} | #{board[1]} | #{board[2]} "
    puts "-----------"
    puts " #{board[3]} | #{board[4]} | #{board[5]} "
    puts "-----------"
    puts " #{board[6]} | #{board[7]} | #{board[8]} "
  end

  def turn(board)
    puts "Please enter 1-9:"
    user_move = gets.strip
    index = input_to_index(user_move)
    if valid_move?(board, index)
      move(board, index)
      display_board(board)
    else 
      turn(board)
    end
  end

  def input_to_index(user_move)
    user_move.to_i - 1
  end

  def valid_move?(board, index)
    if index.between?(0,8)
      !position_taken?(board, index)
      else nil
    end
  end

  def position_taken?(board, index)
    return false if [" ","", nil].include?(board[index])
    return true  if ["X","O"].include?(board[index])
  end

 
  def update_array_at_with(array, index, value)
    array[index] = value
  end

  def move(board, index, value = "X")
    update_array_at_with(board, index, value)
  end

