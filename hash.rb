# coding: utf-8

hash = {"name" => "arthur", "age" => 28};
print hash["name"];
print hash.fetch("age");
print "\n";

hash = Hash.new{|hash, key| hash[key] = key};
print hash["what"];
print(self.to_s)
print(self.class.to_s)
