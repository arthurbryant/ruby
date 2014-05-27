#!/usr/bin/ruby

class Store
  def self.public_path(option)
    begin
      if option
        raise "error"
      else
        "correct_path"
      end
    rescue
      return "error_handler_path"
    end
  end
end

class Test

  def get_path(opt)
    Store::public_path(opt)
  end
end

t = Test.new
puts t.get_path(false)
puts t.get_path(true)
