#!/usr/bin/ruby

def multiple_return(x)
  return [x, 1, 2, 3]
end

p multiple_return(0)

a, b, *c = *multiple_return(0)

p a
p b
p c

name = "Jason"
def test
  p name
end

test
