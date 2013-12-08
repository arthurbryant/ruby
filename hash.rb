# coding: utf-8

hash = {"name" => "arthur", "age" => 28};
print hash["name"];
print hash.fetch("age");
print "\n";

hash = Hash.new{|hash, key| hash[key] = key}
print hash["what"]
print(self.to_s)
print(self.class.to_s)


p1 = { :first => "f1", :last => "l1" }
p2 = { :first => "f2", :last => "l2" }
p3 = { :first => "f3", :last => "l3" }
param = { :father => p1, :mother => p2, :child => p3}
puts param[:father][:first]

array = (1..5).to_a
puts array.inspect
array.collect! do |n|
  n**2
end
puts array.inspect

