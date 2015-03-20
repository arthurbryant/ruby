#!/usr/bin/env ruby

def yield_test(*args)
  puts *args.inspect
  tmp = yield
  puts "tmp = #{tmp}"
end

yield_test(1, 2) { puts "helo, yield"; 0 }
