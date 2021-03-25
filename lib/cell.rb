class Cell
  def initialize
    @mark = ''
  end

  attr_reader :mark

  def update_mark?(mark)
    if valid_mark?(mark)
      @mark = mark
      true
    else
      false
    end
  end

  def valid_mark?(mark)
    %w[X O].include?(mark)
  end

  def valid?
    @mark == '' || @mark.nil?
  end
end
