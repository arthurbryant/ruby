#coding: utf-8

require "kconv"

print "hello"*3
print "\n"
print "I am ".concat("a student\n");
print("tokyo, " << "japan\n");
print "#{Fixnum.class()}\n"

var1, var2 = "what"
print RUBY_VERSION
print RUBY_PLATFORM
range1 = Range.new(1, 5);
range2 = Range.new(1, 5, true);
for i in 1...5.succ do
    print "#{i}\n";
end
print "\n"

for i in range1 do
    print "#{i}\n";
end

print "\n"

for i in range2 do
    print "#{i}\n";
end
