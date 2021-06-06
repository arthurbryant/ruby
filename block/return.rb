#!/usr/bin/ruby

def create_counter
  count = 1

  return Proc.new do
    count += 1
    puts count
  end
end

c = create_counter
c.call
c.call

c2 = create_counter
c2.call
c2.call
