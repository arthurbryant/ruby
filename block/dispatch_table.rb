#!/usr/bin/ruby

def jogging
  puts "jogging"
end

def work
  puts "work"
end
def sleep
  puts "sleep"
end

dispatch_table = {
  :morning => jogging,
  :noon => work,
  :night => sleep
}
