#!/usr/bin/env ruby

require 'English'

def error_handler
  yield
  print yield.itself.chomp
  if $CHILD_STATUS.success?
    puts " success"
  else
    puts " failed"
  end
end

def test_method
  `echo "test"`
end

error_handler do
  test_method
end


def yield_data(data)
  yield data
end

(1..10).each do |i|
  yield_data(i) do
    p i
  end
end
