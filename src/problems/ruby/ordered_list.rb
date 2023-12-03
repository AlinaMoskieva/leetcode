class OrderedList
  attr_accessor :items

  def initialize(_items)
    @items = [
      { id: 1, title: 'one', position: 0 },
      { id: 2, title: 'two', position: 1 },
      { id: 3, title: 'three', position: 2 },
      { id: 4, title: 'four', position: 3 },
      { id: 5, title: 'five', position: 4 }
    ]
  end

  # Complexity T: O(n * log(n))
  def index
    items.sort_by { |elem| elem[:position] }
  end

  # Complexity T: O(1)
  def insert(title)
    current_last_element = items.last

    items.push({ id: current_last_element[:id] + 1, title: title, position: current_last_element[:position] + 1 })
  end

  # Complexity T: O(n)
  def delete(id)
    item_to_delete = get_by(id)
    items.delete(item_to_delete)

    items.each do |item|
      item[:position] = item[:position] - 1 if item[:position] > item_to_delete[:position]
    end
  end

  # Complexity T: O(n)
  def replace(item_id, place_to)
    item = get_by(item_id)

    return unless item

    range = item[:position] < place_to ? (item[:position] + 1..place_to) : (place_to..item[:position] - 1)
    direction = item[:position] < place_to ? 1 : -1

    items.each do |other_item|
      other_item[:position] = other_item[:position] + direction if range.cover? other_item[:position]
    end

    item[:position] = place_to
  end

  private

  # Complexity T: O(n)
  def get_by(id)
    items.find { |i| i[:id] == id }
  end
end
