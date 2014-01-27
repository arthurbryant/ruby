#!/usr/bin/ruby

File.open('split.rb') do |file|
  file.each do |line|
    if line !~ /email/
      print "# ", line
    end
  end
end

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
