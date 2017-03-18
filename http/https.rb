#!/usr/bin/env ruby

require 'net/https'

uri = URI.parse('https://bidapi.foru.club/api/v1/auctions/1')
http = Net::HTTP.new(uri.host, uri.port)
http.use_ssl = true
http.verify_mode = OpenSSL::SSL::VERIFY_NONE
result = nil
  http.start do |h|
    result = h.get(uri.request_uri)
  end
p uri.request_uri
p result.body
