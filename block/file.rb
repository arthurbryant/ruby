#/usr/bin/ruby

require 'yaml'

class File
  def self.open_and_process(*args)
    file = File.open(*args)
    yield file
    file.close
  end
end

File.open_and_process('fib.rb', 'r') do |f|
  f.each do |line|
    puts line
  end
end
