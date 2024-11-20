!# /usr/bin/env ruby
# Patrick Punch
require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

bike.add_cargo(:apples)
bike.add_cargo(:water)
bike.add_cargo(:repair_kit)

puts bike.cargo_message

bike.rent!
