#!/usr/bin/ruby

def upload
  1 / 0
end

begin
  upload
rescue Exception => e
  STDERR.puts e.message
  STDERR.puts $!
  STDERR.puts e.backtrace
  STDERR.puts $@
end

