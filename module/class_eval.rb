class Foo; end

Foo.class_eval do
  def print
    puts "class eval"
  end
end
Foo.module_eval do
  def module_print
    puts "module eval"
  end
end

Foo.module_eval("print", "dummy", 123)
puts Foo.new.print()
puts Foo.new.module_print()
