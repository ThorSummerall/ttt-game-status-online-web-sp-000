# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

<<<<<<< HEAD
# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
=======
WIN_COMBINATIONS=[
>>>>>>> 48ee0f5345f080c389f25c1f0cb07736a1f88ead
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
]
<<<<<<< HEAD
def won?(board)
  WIN_COMBINATIONS.each do |win_combination|
    
    win_index_1 = win_combination[0]
    win_index_2 = win_combination[1]
    win_index_3 = win_combination[2]
  
    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]
  
    if position_1 == position_2 && position_2 == position_3 && position_taken?(board, win_index_1)
      return win_combination
    else
      false
    end
  end
  return false
end

def full?(board)
  board.all? do |index|
    index == "X" || index == "O"
=======

def won?(board)
  WIN_COMBINATIONS.each do |combo|
    index_1 = combo[0]
    index_2 = combo[1]
    index_3 = combo[2]
    space_1 = board[index_1]
    space_2 = board[index_2]
    space_3 = board[index_3]
    if space_1 == space_2 && space_2 == space_3 && position_taken?(board, index_1)
return combo
    end
  end
  false
end

def full?(board)
  board.all? do |element|
    element == "X" || element == "O"
>>>>>>> 48ee0f5345f080c389f25c1f0cb07736a1f88ead
  end
end

def draw?(board)
<<<<<<< HEAD
  if !won?(board) && full?(board)
    return true
  else
    return false
  end
end

def over?(board)
  if won?(board) || full?(board) || draw?(board)
    return true
  else
    return false
  end
end

def winner(board)
  if won?(board) == false
    return nil
  elsif board[won?(board)[0]] == "X"
    return "X"
  else
    return "O"
  end
=======
  !(won?(board)) && full?(board)
end

def over?(board)
  won?(board) || full?(board) || draw?(board)
end

def winner(board)
  if combo = won?(board)
  position_1 = combo[0]
  element_1 = board[position_1]
else nil
end
>>>>>>> 48ee0f5345f080c389f25c1f0cb07736a1f88ead
end