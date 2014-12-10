require_relative 'paper'

include Paper

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
#Magazine::test_module2
hello
