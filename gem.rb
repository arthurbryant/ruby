#!/usr/bin/ruby

require 'builder'

#xml = Builder.XmlMarkup.new(target: STDOUT, indent: 2)
#xml.person(type: fucker) do
#  xml.name do
#    xml.first_name = 'arthur'
#  end
#  xml.location = 'tokyo'
#  xml.perference = 'ruby'
#end
xml = Builder::XmlMarkup.new(target: STDOUT, indent: 2)
xml.person(type: "programmer") do
  xml.name do xml.first "Dave"
  end
  xml.location "Texas"
  xml.preference("ruby")
end
