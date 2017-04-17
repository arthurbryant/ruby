module Paper
  def base
    puts "paper"
  end

  def Paper.test_module
    puts "test module"
  end

  def self.test_module2
    puts "module function 2"
  end

  def hello
    puts "hello paper"
  end

  def test_module3
    puts "moudle function 3"
    hello
  end
  module_function :test_module3
  private :hello

end

Paper.test_module
Paper.test_module2
Paper.test_module3
Paper.hello
#Paper.base
