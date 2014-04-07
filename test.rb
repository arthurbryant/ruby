def time(&block)
  require 'benchmark'
  result = nil
  timing = Benchmark.measure do
    result = block.()
  end
  puts "It took: #{result}"
  result
end

while line = DATA.gets
  puts line
end

BEGIN {
  puts "start 1"
}
BEGIN {
  puts "start 2"
}

END {
  puts "clear 2"
}

END {
  puts "clear 1"
}
__END__
puts "hello"
puts "world"
