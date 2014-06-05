#!/usr/bin/ruby

class Store
  UNABLE_PRODUCE_ERROR = 'can not produce'
  def order
    begin
      fac = Factory.new
      fac.make_shoes(100)
    rescue => e
      puts e.message
      case e.message
        when UNABLE_PRODUCE_ERROR
          puts "error occurs"
      end
    end
  end
end

class Factory

  def make_shoes(order_num)
    puts "create #{order_num} shoes"
    if (order_num > 99)
      raise Store::UNABLE_PRODUCE_ERROR
    end
  end
end

s = Store.new
s.order
