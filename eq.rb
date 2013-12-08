OS_TYPE = 'iOS'
hash = { os_type: 'iOS', id: 1 }
if hash[:os_type] == OS_TYPE
  puts "=="
elsif hash[:os_type] == 'Android'
  puts "=="
end

t = nil::NilClass
if(t.nil?)
  puts "good"
end
