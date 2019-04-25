#!/usr/bin/env ruby

def test(table, max_size=10, *columns)
  sql = "select #{columns.join(", ")} from #{table} limit #{max_size}"
  puts sql
end

test("system.runtime.queries", 1, 'state', 'created_at')
