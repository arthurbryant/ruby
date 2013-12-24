class Test

  def hello
    self.test_private
  end
  def hello2
    test_private
  end

  private
  def test_private
    puts "private"
  end
end

t = Test.new
t.send(:test_private)
t.hello2
t.hello
t.test_private
