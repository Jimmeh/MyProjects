class Stack
  def initialize capacity
    @capacity = capacity
    @size = 0
  end
  
  def size
    @size
  end
  
  def push item
    raise OverflowError if (is_full)
    @size += 1
  end
  
  def is_full
    @size + 1 > @capacity
  end
  
  def is_empty
    @size == 0
  end
  
  def pop
    raise UnderflowError if (is_empty)
    @size -= 1
  end
end