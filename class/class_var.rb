#!/usr/bin/ruby

class Parent
  @@var = "Parent"

  def self.print_class_var
    puts @@var
  end
end

class Child < Parent
  @@var = "Child"
end

Parent.print_class_var
Child.print_class_var
