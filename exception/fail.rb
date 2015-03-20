#!/usr/bin/env ruby -w

class FailTest
  def validate!(accessable)
    if accessable
      return true
    else
      fail 'can not access'
    end
  end
end

begin
  p = FailTest.new
  if p.validate!(true)
    puts 'access free'
  end
rescue StandardError => e
  puts e.message
end

