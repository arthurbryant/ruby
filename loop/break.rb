def block_break
  (1..5).each do |i|
     break if i % 3 == 0
     puts i
  end
end

result = block_break
puts "#{result}"
