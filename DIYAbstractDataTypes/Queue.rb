class Queue

  attr_reader :queueArray

  def initialize
    @queueArray = []
  end

  def enqueue(el)
    queueArray << el
  end

  def dequeue
    queueArray.shift
  end

  def peek
    queueArray.first
  end
end
