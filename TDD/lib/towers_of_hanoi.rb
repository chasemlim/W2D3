class Game
end

class Board
  def initialize
    @grid = Array.new(3) {Array.new}
  end
  
  def [](pos)
    row, col = pos
    @grid[row][col]
  end
  
  def []=(pos, value)
    row, col = pos
    @grid[row][col] = value
  end
  
  def get_input
    
    puts "Select a stack to move from. (0-2)"
    to = gets.chomp.to_i # 0
    puts "Select a stack to move to. (0-2)"
    from = gets.chomp.to_i # 1
    
    if valid_move?(to, from)
      
    else
      
    end
  end
  
  def valid_move?(to, from)

    raise InvalidInputError if (to < 0 || to > 2) || (from < 0 || from > 2)

    
  end
end

class InvalidInputError < StandardError
  def message
    "Invalid Input! Please put a number between 0 and 2"
  end
end