#!/usr/bin/ruby

File.open('split.rb') do |file|
  file.each do |line|
    puts line
    if result = line.match(/(.*)email\((.*)\)(.*)/)
      # the whole match is stored in result[0] as default
      puts result[0]
      puts result[1]
      puts result[2]
      puts result[3]
      break
    end
  end
end
puts "=========================="

# sub
File.open('split.rb') do |file|
  file.each do |line|
    line.gsub!(/email/, 'ERROR')
    puts line
  end
end

puts "=========================="
# m option
File.open('split.rb') do |file|
  file.each do |line|
    if line =~ /^(.(?!email))*$/i
      puts line
    else
      puts "can not match email"
    end
  end
end
