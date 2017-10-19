#!/usr/bin/env ruby

def processable?(limits, level, num)
  if limits.keys.include?(level.to_s)
    if limits[level].to_i >= num.to_i
      puts "true"
      return
    end
  end
  puts "false"
end

limits = {'8' => 200, '7' => 5}
level, num = ARGV[0], ARGV[1]
puts level
puts num

processable?(limits, level, num)

