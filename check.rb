#!/usr/bin/env ruby

(20161001..20161130).to_a.each do |d|
  p d
  cmd = "wget --tries=1 --no-check-certificate --timeout=0 'http://localhost:3000/api/data/make?command=new_repeat&from=#{d}&to=#{d}'"
  system(cmd)
  p '------------------ sleep'
  sleep(10)
end
