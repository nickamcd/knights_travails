class Knight
  # Define legal knight moves, going clockwise.
  LEGAL_MOVES = [
    [-1, -2], [1, -2], # Up 2 Left 1, Up 2 Right 1
    [2, -1], [2, 1]    # Right 2 Up 1, Right 2 Down 1
    [-1, 2], [1, 2],   # Down 2 Left 1, Down 2 Right 1
    [-2, -1], [-2, 1], # Left 2 Up 1, Left 2 Down 1
  ]
  
  attr_accessor :position
  
  def initialize(position)
    @position = position
  end
end


#dx[] = {}
#dy[] = {}