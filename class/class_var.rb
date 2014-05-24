#!/usr/bin/ruby

class Test
  @@class_var = 1;

  def get_class_var
    return @@class_var
  end

  def set_class_var=(var)
    @@class_var = var
  end

  def inc
    @@class_var += 1
  end
end

@@class_var = "hello"
t1 = Test.new
t2 = Test.new
t1.set_class_var = 12
puts t1.get_class_var
t1.inc
puts t2.get_class_var
