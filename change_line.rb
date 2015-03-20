#!/usr/bin/env ruby

def test_return
  if 1
    return \
    "ok"
  else
    return \
    "not ok"
  end
end

puts test_return
