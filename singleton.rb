class Human
end

y = Human.new

class << y
  def hello
    puts "hello singleton"
  end
end

y.hello

x = Human.new
x.hello
