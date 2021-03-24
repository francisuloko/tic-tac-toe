#!/usr/bin/env ruby
require_relative '../lib/cell'
require_relative '../lib/board'

cell = Cell.new


p cell.set_value?(5, "X")

p cell.valid?
 
p cell.value

board  = Board.new

board.cell_grid.each do  |element |
  element.each do |value|
    p value.value
  end
end
