#!/usr/bin/ruby

def prompt_and_get(prompt)
  print prompt
  res = gets.chomp
  throw :quit_request if res == '!'
end

catch(:quit_request) do
  prompt_and_get("Name: ")
  prompt_and_get("Age: ")
end
