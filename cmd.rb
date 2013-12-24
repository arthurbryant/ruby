#!/usr/bin/env ruby

require 'rubygems'
require 'commander/import'
require 'pp'

program :version, '0.0.1'
program :description, 'cmd for test commander line'

params = {}
command :cmd do |c|
  c.syntax = 'mac cmd [options]'
  c.summary = ''
  c.description = ''
  c.example 'description', 'command example'
  c.option '-f filename', 'pass udid file', params[:file] = true
  c.option '--some-switch', 'Some switch that does something'
  c.action do |args, options|
    puts args
    if(params[:file] == true)
      pp options.f
    end
  end
end
