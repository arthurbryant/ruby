#!/usr/bin/ruby

def upload
  1/0
end

begin
  p "start begin"
  upload
ensure
  p "execute ensure"
end
