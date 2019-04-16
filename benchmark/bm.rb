require 'benchmark'
require 'awesome_print'

Benchmark.bm(5) do |x|
  x.report("test:") do
    index = 0
    while(index < 10_000) do
      index += 1
      puts rand
    end
  end
end
