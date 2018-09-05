#!/usr/bin/env ruby

def my_wait_until(interval: 1, max_attempts: 60)
  retry_succeed = 1.upto(max_attempts).find do |attempt|
    next true unless yield(attempt)
    next false if attempt == max_attempts

    sleep interval
    false
  end
  raise StandardError unless retry_succeed
end

result = my_wait_until(interval: 1, max_attempts: 6) do
  num = rand(10)
  puts num
  num >= 4
end

puts result
