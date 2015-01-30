class LinkedList

  def initialize
    @head = nil
  end


  def [](index)
    node_index = 0

    self.each do |node|
      if node_index == index
        return node
        exit
      else
        node_index += 1
      end
    end

    puts "No node at #{index}"
  end

  def insert(index, value)
    # Code for inserting a node...
  end

  def delete_at(index)
    # Code for removing a node...
  end


  def each
    node = @head

    while !node.nil?
      yield(node.data)
      node = node.next
    end
  end

  def prepend(value)
    @head = Node.new(value, @head)
  end

  class Node
    attr_accessor :data, :next

    def initialize(data, next_node)
      self.data = data
      self.next = next_node
    end
  end
end
