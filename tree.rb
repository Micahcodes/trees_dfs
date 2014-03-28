class Node
  attr_reader :value, :children

  def initialize(value)
    @value = value
    @children = []
  end

  def add_child(value)
    n = Node.new(value)
    @children << n
    n
  end

  def dfs(value)
    if self.value == value
      return self
    end

    self.children.each do |child|
      result = child.dfs(value)
      if result
        if result.value == value
          return result
        end
      end
    end

    return nil
  end

  def bfs(value, queue = [])
    # if the given value is the same as this node return self
    # Otherwise add all of this nodes children to the queue
    # of nodes needed to be searched
    #
    # While the queue is not empty
    # grab the first element in the queue (and remove it)
    # run bfs on that node with the proper argument and get the result
    # if that node found what you're looking for, return the resulting node
    # Otherwise, move on to the next node
    #
    # If the queue is empty and you haven't found it yet, return nil
  end
end
