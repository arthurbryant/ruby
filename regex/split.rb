#!/usr/bin/ruby

def format_email(email)
  regex = /^<(.*)>$/
  return email unless regex.match(email)
  return email.scan(regex)[0][0]
end

emails = []
File.open("/Users/feng.zhang/Desktop/all.csv", "r").each do |f|
  email = f.split(/[,\ ]/).last
  email = email.chomp
  puts "email: ", email
  emails << format_email(email)
end

p emails
