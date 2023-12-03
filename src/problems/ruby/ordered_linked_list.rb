class Node
  attr_accessor :data, :next_elem

  def initialize(val, next_elem = nil)
    @data = val
    @next_elem = next_elem
  end
end

class OrderedLinkedList
  attr_accessor :head

  def initialize(head)
    @head = head
  end

  # Complexity T: O(n)
  def index
    list = []
    current_head = head

    while current_head
      list.push(current_head.data)
      current_head = current_head.next_elem
    end

    list
  end

  # Complexity T: O(n)
  def insert(value)
    current_last_element = head

    return self.head = Node.new(value) if current_last_element.nil?

    current_last_element = current_last_element.next_elem while current_last_element.next_elem

    current_last_element.next_elem = Node.new(value)
  end

  # Complexity T: O(n)
  def delete(value)
    current = head

    if current.data == value
      self.head = current.next_elem
      return
    end

    current = current.next_elem while current&.next_elem && current.next_elem.data != value

    current.next_elem = current.next_elem&.next_elem
  end

  # Complexity T: O(n)
  def replace(value, place_after)
    previous_node = head

    previous_node = previous_node.next_elem while previous_node&.next_elem && previous_node.next_elem.data != value

    element_to_replace = previous_node&.next_elem
    previous_node.next_elem = element_to_replace&.next_elem

    place_after_node = head

    while place_after_node&.next_elem && place_after_node.next_elem.data != place_after
      place_after_node = place_after_node.next_elem
    end

    element_to_replace.next_elem = place_after_node&.next_elem
    place_after_node.next_elem = element_to_replace
  end
end
