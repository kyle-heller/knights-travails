require './tree.rb'

position = [0,0]
goal = [3, 3]

def possible_next_moves(position)
  # Gives list of possible next moves from a position on an infinite board, can be called recursively to get future moves
  moves = []
  moves << [position[0] + 1, position[1] + 2]

  moves << [position[0] + 2, position[1] + 1]

  moves << [position[0] + 1, position[1] - 2]

  moves << [position[0] + 2, position[1] - 1]

  moves << [position[0] - 1, position[1] - 2]

  moves << [position[0] - 2, position[1] - 1]

  moves << [position[0] - 1, position[1] + 2]

  moves << [position[0] - 2, position[1] + 1]
end

def on_board?(moves)
  # takes array of moves and prints whether move is on board or off board, returns available moves
  available_moves = []
  moves.each do |move|
    if move[0].between?(0, 7) && move[1].between?(0, 7)
      puts "#{move} - On board"
      available_moves << move
    elsif move[0].between?(0, 7) && move[1].between?(0, 7)
      puts "#{move} - On board"
      available_moves << move
    else 
      puts "#{move} - Off board"
    end
  end
  available_moves
end

moves = possible_next_moves(position)
p on_board?(moves)



#Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board.
# How do I do this?...

#So starting node of a tree should have children that are possible moves from that position (which we'd get from only on-board moves)

#Each of those children will have children that have possible on-board mmoves from the parents location

# Repeat this for each node until one of the children has coordinates for our goal move

# Use algorithm to compare each path to goal nodes and find shortest path

# Print out each step along the way



# graph = [
#   [0, 0, 0, 0, 0, 0, 0, 0], 
#   [0, 0, 0, 0, 0, 0, 0, 0],  
#   [0, 0, 0, 0, 0, 0, 0, 0],  
#   [0, 0, 0, 0, 0, 0, 0, 0],
#   [0, 0, 0, 0, 0, 0, 0, 0], 
#   [0, 0, 0, 0, 0, 0, 0, 0],  
#   [0, 0, 0, 0, 0, 0, 0, 0],  
#   [0, 0, 0, 0, 0, 0, 0, 0]
# ]

# board = [
#   [7, 0, 0, 0, 0, 0, 0, 0], 
#   [6, 0, 0, 0, 0, 0, 0, 0],  
#   [5, 0, 0, 0, 0, 0, 0, 0],  
#   [4, 0, 0, 0, 0, 0, 0, 0],
#   [3, 0, 0, 0, 0, 0, 0, 0], 
#   [2, 0, 0, 0, 0, 0, 0, 0],  
#   [1, 0, 0, 0, 0, 0, 0, 0],  
#   [0, 1, 2, 3, 4, 5, 6, 7]
# ]


# Your task is to build a function knight_moves that shows the shortest possible way to get from one square to another 
# by outputting all squares the knight will stop on along the way.

# You can think of the board as having 2-dimensional coordinates. Your function would therefore look like:

# knight_moves([0,0],[1,2]) == [[0,0],[1,2]]
# knight_moves([0,0],[3,3]) == [[0,0],[1,2],[3,3]]
# knight_moves([3,3],[0,0]) == [[3,3],[1,2],[0,0]]

# Put together a script that creates a game board and a knight.
# Treat all possible moves the knight could make as children in a tree. Don’t allow any moves to go off the board.
# Decide which search algorithm is best to use for this case. Hint: one of them could be a potentially infinite series.
# Use the chosen search algorithm to find the shortest path between the starting square (or node) and the ending square. 
# Output what that full path looks like, e.g.:

# > knight_moves([3,3],[4,3])
#   => You made it in 3 moves!  Heres your path:
#     [3,3]
#     [4,5]
#     [2,4]
#     [4,3]

# class Board
# end

# class Knight
#   # Treat all possible moves the knight could make as children in a tree. Dont allow any moves to go off the board.

#   def initialize
#     @current_position
#   end

#   def possible_moves
#   end

#   def shortest_path
#   end
# end