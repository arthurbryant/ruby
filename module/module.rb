module Paper
  def base
    puts "paper"
  end

  def Paper.test_module
    puts "paper test module"
  end
end

Paper::test_module

class Book
  include Paper
end

class Magazine
  extend Paper
end

c = Book.new
c.base
#c.test_module

m = Magazine.new
#m.base
#m.test_module
Magazine::base
Magazine::Paper::test_module
