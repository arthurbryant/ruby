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

  def hello
    puts "hello paper"
  end
end
