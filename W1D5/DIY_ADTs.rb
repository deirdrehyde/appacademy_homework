class Stack
  def initialize
    @new_stack = []
  end

  def add(el)
    @new_stack.push(el)
  end

  def remove
    @new_stack.pop
  end

  def show
    @new_stack.dup
  end
end

class Queue
  def initialize
    @new_queue = []
  end

  def enqueue(el)
    @new_queue.unshift(el)
  end

  def dequeue
    @new_queue.pop
  end

  def show
    @new_queue.dup
  end
end

class Map

  def initialize
    @new_map = []
  end

  def assign(key, value)
    pair_index = @new_map.index {|pair| pair.first == key}
    pair_index ? @new_map[pair_index] = [key, value] : @new_map << [key, value]
    @new_map
  end

  def lookup(key)
    @new_map.each {|pair| return pair.last if pair.first == key}
  end

  def remove(key)
    @new_map.each {|pair| @new_map.delete(pair) if pair.first == key}
  end

  def show
    deep_dup(@new_map)
  end
  private
  def deep_dup(arr)
    arr.each {|el| el.is_a?(Array) ? deep_dup(el) : el}
  end
end
