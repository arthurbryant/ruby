#!/usr/bin/env ruby

def test(hash = {'purpose_type' => 'default'})
  puts hash['purpose_type']
end

test()
test('purpose_type' => 'ok')
