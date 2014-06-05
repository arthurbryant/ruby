#!/usr/bin/ruby

class TestReturnRaise
  def return_raise(order)
    begin
      if(order < 99)
        puts "create #{order}"
        return 0
      else
        return error_handler(order)
      end
    rescue => e
      puts "======"
      puts e.message
      raise e
    end
  end
end

t = TestReturnRaise.new
puts t.return_raise(98)
puts t.return_raise(100)
