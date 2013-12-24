catch :label do
  puts "will print"
throw :label
  puts "will not print"
end
