require_relative 'coffee'
require_relative 'milk'
require_relative 'whip'

c = Coffee.new
puts c.cost

m = Milk.new(Coffee.new)
puts m.cost

w = Whip.new(Milk.new(Coffee.new)).cost
puts w
