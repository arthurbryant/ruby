#!/usr/bin/ruby

class Test
  @@name = "test"
  @instance_var = "instance parent"

  def self.print_var
    puts @@name
  end

  def self.print_instance_var
    puts @instance_var
  end
end

class Child < Test
  @@name = "child"
  @instance_var = "instance child"
end

Test.print_var
Child.print_var
Test.print_instance_var
Child.print_instance_var

strs = %w[arthur bryant]
puts strs
