#!/usr/bin/ruby

line1 = 'Cats are smarter than dogs'
line2 = 'Dogs also like meat'

if line1 =~ /Cats(.*)/
    puts "Contain Cats"
end

if line2 =~ %r!Dogs!
    puts "Contain Dogs"
end

str = '<html><body>Ruby Regex</body></html>'
result = str.match(%r!<(.*)>!)
puts result[0]
puts result[1]

not_greedy = str.match(/<(.*?)>/)
puts not_greedy[0]
puts not_greedy[1]
