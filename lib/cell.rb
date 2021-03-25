class Cell
  def initialize
    @mark = ''
  end

  def mark
    @mark
  end

  def set_mark?(mark)
    if valid_mark?(mark) 
      @mark = mark
      true
    else
      false
    end
  end

  def valid_mark?(mark)
    mark == "X" || mark == "O"
  end

  def valid?
    @mark=='' || @mark == nil
  end
end