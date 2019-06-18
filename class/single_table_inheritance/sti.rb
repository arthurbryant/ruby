#!/usr/bin/env ruby

require 'active_record'

class Company < ActiveRecord::Base; end
class Firm < Company; end
class Client < Company; end
class PriorityClient < Client; end

puts Company.new.changed?

puts Firm.new.changed?
puts Firm.new.changes
