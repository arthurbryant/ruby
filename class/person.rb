#!/usr/bin/env ruby

class Person
  AGE_BY_NAME = {
    'Taro' => 20,
  }.freeze

  def initialize(name)
    @name = name
  end

  def say_hello
    @age = AGE_BY_NAME[@name]
    puts "Hello, my name is #{@name} and #{@age} old."
  end

  def age
    @age
  end
end

arthur = Person.new("Taro")
arthur.say_hello
puts arthur.age
