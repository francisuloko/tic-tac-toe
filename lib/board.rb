require_relative './cell'
class Board
  attr_reader :cell_grid

  def initialize
    set_grid
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
end