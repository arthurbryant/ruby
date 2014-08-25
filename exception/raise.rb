class NilError < StandardError; end
class OutOfBoundError < StandardError; end
class TestRescue
  def test_error
    begin
      raise OutOfBoundError
    rescue NilError
      puts "Nil error"
    rescue OutOfBoundError
      puts "out of bound error"
    end
  end
end

class Test
  def call_sub
    begin
      Print.output()
      puts "after raise error"
    rescue
      puts "resuce error in Test"
    end
  end
end

class Print
  def self.output
    begin
      puts "before raise in Print.output"
      raise 'error happend'
    rescue
      puts "resuce error"
    end
  end
end

t = Test.new
t.call_sub

tr = TestRescue.new.test_error
