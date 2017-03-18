#!/usr/bin/env ruby

class Truck
  attr_accessor :driver, :route

  def initialize(driver, route)
    @driver, @route = driver, route
  end
end

truck = Truck.new('Arthur', ['roppongi road 22', 'shibuya road 12'])
puts truck.inspect

truck.instance_variable_set('@speed', 60)

puts truck.inspect
puts truck.driver
puts truck.route

puts Truck.object_id
puts truck.object_id

puts Class.superclass
puts Class.superclass.superclass
puts Class.superclass.superclass.superclass
puts Class.superclass.superclass.superclass.superclass

puts Object.superclass
puts Object.superclass.superclass
