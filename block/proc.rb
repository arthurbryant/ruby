#!/usr/bin/env ruby

proc = Proc.new { p "proc" }
p proc.class
proc.call
