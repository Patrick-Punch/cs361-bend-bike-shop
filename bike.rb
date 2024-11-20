# Bike
# Patrick Punch
class Bike

  STANDARD_WEIGHT = 200 # lbs
  MAX_CARGO_ITEMS = 10

  attr_accessor :id, :color, :price, :weight, :rented, :cargo_contents

  def initialize(id, color, price, weight = STANDARD_WEIGHT, rented = false)
    @id = id
    @color = color
    @price = price
    @weight = weight
    @rented = rented
    @cargo_contents = []
  end

  def rent!
    @rented = true
  end

  def add_cargo(item)
    check_pannier
    @cargo_contents << item
  end

  def remove_cargo(item)
    @cargo_contents.remove(item)
  end

  def pannier_remaining_capacity
    MAX_CARGO_ITEMS - cargo_contents.size
  end

  def check_pannier
    if @cargo_contents.size == MAX_CARGO_ITEMS
      raise "Cargo is full!"
    end
  end

  def cargo_message
    puts "Space for #{pannier_remaining_capacity} items left."
  end
end
