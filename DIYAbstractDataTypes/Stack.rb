class Stack

  attr_reader :stackArray

  def initialize
    @stackArray = []
  end

  def push(el)
    @stackArray << el
  end

  def pop
    stackArray.pop
  end

  def peek
    stackArray.last
  end
end
