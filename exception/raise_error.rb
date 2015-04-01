#!/usr/bin/ruby

def upload
  1 / 0
end

begin
  upload
rescue Exception => e
  STDERR.puts e.message
  STDERR.puts e.backtrace
end

def new_exception_1
  begin
    raise StandardError.new("start new exception")
  rescue StandardError => e
    p e.inspect
  end
end

def new_exception_2
  begin
    raise StandardError, "start new exception"
  rescue StandardError => e
    p e.inspect
  end
end

def new_exception_3
  begin
    raise "start new exception"
  rescue StandardError => e
    p e.inspect
  end
end

new_exception_1
new_exception_2
new_exception_3
