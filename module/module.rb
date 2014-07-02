module Paper
  def base
    puts "paper"
  end

  def Paper.test_module
    puts "paper test module"
  end

  def self.test_module2
    puts "module function 2"
  end

  def test_module3
    puts "moudle function 3"
  end
  module_function :test_module3
end

Paper::test_module
Paper::test_module2
Paper::test_module3

class Book
  # Module method will become class instance method
  include Paper
end

class Magazine
  # Module method will become class method
  extend Paper
end

c = Book.new
c.base
#c.test_module

m = Magazine.new
#m.base
#m.test_module
Magazine::base
#Magazine::Paper::test_module
Magazine::test_module2
