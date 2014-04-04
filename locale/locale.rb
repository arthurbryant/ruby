#!/usr/bin/ruby

accept_language = "en-US,en;q=0.8,ja;q=0.6,zh-CN;q=0.4,zh;q=0.2".scan(/^[a-z]{2}/).first.to_sym
puts accept_language


str = "zh-TW,zh;q=0.8,ja;q=0.6,en-US;q=0.4,en;q=0.2,zh-CN;q=0.2"
str2 = "zh,zh;q=0.8,ja;q=0.6,en-US;q=0.4,en;q=0.2,zh-CN;q=0.2"
aa = str2.scan(/^([a-z]{2})(-[a-zA-Z]{2})*/).first do |word1, word2| 
  if(word2 == 'cn'.intern || word2 == 'CN'.intern)
    return 'zh-CN'
  else
    return word1
  end
end

print aa[0]
m = "what ".scan(/(\w+)(\d+)*/).first
if m[1].nil?
  print "ok"
end
