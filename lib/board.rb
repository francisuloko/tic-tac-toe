require_relative './cell'
class Board
  attr_reader :cell_grid

  def initialize
    set_grid
  end

  def set_value_grid?(position, mark)
    new_value = position.to_i
    valid = false
    if(new_value >= 1 && new_value <= 9)
      new_value -= 1
      x_y = get_x_y(new_value)
      valid = verify_cell?(x_y)
      valid = set_mark_cell?(x_y, mark) if valid
    end
    valid
  end

  def get_cell_value(position)
    x_y = get_x_y(position)
    @cell_grid[x_y.x][x_y.y]
  end

  private
  def default_grid
      Array.new(3) { Array.new(3) { Cell.new }}
  end

  def set_grid
    if @cell_grid.nil?
      @cell_grid = default_grid
    end
  end

  def verify_cell?(postition)
    @cell_grid[postition.x][postition.y].valid?   
  end
  
  def set_mark_cell?(postition, mark)
    @cell_grid[postition.x][postition.y].set_mark?(mark)
  end

  def get_x_y (position)
    x = position / 3
    y = position % 3
    Position.new(x,y)
  end
end

class Position
  attr_reader :x, :y
  def initialize(x, y)
    @x = x
    @y = y 
  end
end