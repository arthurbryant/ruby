#!/usr/bin/ruby

ips = [
  '52.193.98.215',
  '52.193.98.216',
  '52.193.98.217'
]

File.open('./ip', 'w') do |f|
  ips.map {|ip| f.puts ip}
end

ips = []
File.open('./ip') do |f|
  while line = f.gets
    ips << line.chomp
  end
end

puts ips.inspect
