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
  attr_accessor :my_map
  def initialize
    @my_map = []

  end


  def set(key, value)
    @my_map.each do |subarr|
      return false if subarr[0] == key
    end

    @my_map << [key,value]

  end

  def get(key)

    @my_map.each { |sub_arr| return sub_arr[1] if sub_arr[0] == key }
    # @my_map.select {|sub_arr| return sub_arr[1] if sub_arr[0] == key}
    nil
  end

  def delete(key)
    idx_to_delete = ""
    @my_map.each_with_index do |sub_arr,idx|
      idx_to_delete = idx if sub_arr[0] == key
    end

    @my_map.delete_at(idx_to_delete)
  end

  def show
    p @my_map
  end


end
