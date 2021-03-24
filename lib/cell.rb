class Cell
  def initialize
    @value = 'x'
  end

  def value
    @value
  end

  def set_value?(position, value)
    new_value = position.to_i
    if valid? && valid_mark?(value) && new_value > 1 && new_value <= 9
      @value = value
      true
    else
      false
    end
  end

  def valid_mark?(mark)
    mark == "X" || mark == "O"
  end

  def valid?
    @value=='' || @value == nil
  end
end