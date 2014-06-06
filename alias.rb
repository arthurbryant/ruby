class Fixnum
  alias div /
end

puts 10.div(5)

alias $precompile $`
alias $matchcompile $&
'motherfucer' =~ /e/
p $precompile
p $matchcompile

alias :cmd :`
p cmd "date"

def hoge
  puts "hoge"
end

alias my_method hoge

def hoge
  puts "new hoge"
end

my_method
hoge
