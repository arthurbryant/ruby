#!/usr/bin/env ruby

def test
  raise "Not found"
end


def main
  test
rescue StandardError => e
  puts e.message
end

main
