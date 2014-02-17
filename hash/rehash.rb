#!/usr/bin/ruby

str_arr = ["arthur", "bryant"]
hash = { str_arr => "0826" }
puts hash[str_arr]

# if you change the key object of hash, you have to rehash
str_arr[1] = "mark"
puts hash[str_arr]
hash.rehash
puts hash[str_arr]
