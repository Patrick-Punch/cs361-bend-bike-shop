class Rental

  attr_reader :bike, :luggage

  def initialize(bike, luggage)
    @bike = bike
    @luggage = luggage
  end

  def total_price
    bike.price + bike.weight * 2 + luggage.weight * 2
  end

  def total_weight
    bike.weight + luggage.weight
  end

end
