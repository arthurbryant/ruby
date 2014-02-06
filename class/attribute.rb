class Test
  def test1
    @str = "string"
  end

  def print_str
    puts @str
  end
end

test = Test.new
test.print_str
test.test1
test.print_str
