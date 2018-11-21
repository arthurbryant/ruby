#!/usr/bin/env ruby

hash = {name: 'arthur', age: 20}

def remove_last(hash)
  hash.delete(hash.keys.last)
end

puts hash
remove_last(hash)
puts hash
