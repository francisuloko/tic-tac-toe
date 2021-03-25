class Cell
  def initialize
    @value = 'x'
  end

  def value
    @value
  end

  def set_value?(value)
    if valid_mark?(value)
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