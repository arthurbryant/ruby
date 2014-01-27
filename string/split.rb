#!/usr/bin/ruby

Song = Struct.new(:title, :time, :name)

songs = []
File.open('data') do |file|

  file.each do |line|
    puts line
    file, length, name, title = line.chomp.split(/\s*\|\s*/)
    m, s = length.scan(/\d+/)

    name.squeeze!(" ")
    songs << Song.new(title, m.to_i*60 + s.to_i, name)
  end
end

puts songs.inspect
