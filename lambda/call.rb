#!/usr/bin/env ruby

lam = lambda {p "lambda"}
lam.call

proc = Proc.new {p "proc"}
proc.call

lambda {p "call"}.call()
