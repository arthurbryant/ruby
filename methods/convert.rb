#!/usr/bin/ruby

def format_datetime_local(dt)
  dt.gsub('T', ' ') unless dt.nil?
end

dt = nil
format_datetime_local(dt)
p dt
dt = '2017/05/16T12:12'
dt = format_datetime_local(dt)
p dt
