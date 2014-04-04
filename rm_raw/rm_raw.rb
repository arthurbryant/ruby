#!/usr/bin/ruby

p1 = /(.* )(raw )[\(](t[ \(]')(.*)('[ \)].*)/
p2 = /(.*)(raw\()(t\(')(.*)('\))(\))(.*)/
while line = gets
  if line =~ p1
    line = line.sub!(p1, '\1\3\4_html\5');
    puts line
  end
  if line =~ p2
    line = line.sub!(p2, '\1\3\4_html\5\7');
    puts line
  end
  puts line
end
