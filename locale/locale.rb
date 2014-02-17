#!/usr/bin/ruby

accept_language = "en-US,en;q=0.8,ja;q=0.6,zh-CN;q=0.4,zh;q=0.2".scan(/^[a-z]{2}/).first.to_sym
puts accept_language
