#!/usr/bin/ruby

def upload
  if 1
    raise "limit"
  end
end

begin
  upload
rescue Exception => e
  if e.message == 'limit'
    STDERR.puts "over"
    #STDERR.puts $!
  end
end

