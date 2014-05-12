# collect
c = (11..20).collect {|x| puts x.succ}
puts c
# each
e = (11..20).each {|x| puts x.succ}
p e
a = (11..20).collect {|i| (i%4 == 0)..(i%3 == 0) ? i : nil}
p a
