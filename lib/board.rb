require_relative './cell'
class Board
  attr_reader :cell_grid

  def initialize
    set_grid
  end

  def set_value_grid(position, mark)
    new_value = position.to_i
    if valid? && new_value > 1 && new_value <= 9
      @value = value
      true
    else
      false
    end
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

  def get_x_y (position)
    x = position/3
    y = position % 3

    {}
  end
end