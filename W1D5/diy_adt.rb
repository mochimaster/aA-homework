class Stack
  def initialize
    # create ivar to store stack here!
    @my_stack = []
  end

  def push(el)
    # adds an element to the stack
    @my_stack << el
  end

  def pop
    # removes one element from the stack
    @my_stack.pop
  end

  def peek
    # returns, but doesn't remove, the top element in the stack
    @my_stack.last
  end
end

class Queue
  def initialize
    @queue = []
  end

  def enqueue(el)
    @queue << el
  end

  def dequeue
    @queue.shift
  end

  def peek
    @queue.first
  end

end


class Map
  def initialize
    my_map = []

  end

  def set(key, value)

  end

  def get(key)

  end

  def delete(key)

  end

  def show

  end


end
