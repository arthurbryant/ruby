#!/usr/bin/env ruby

segment_hash = {
  'name'    => 'name',
  'address' => 'address'
}

def modify_segment(seg)
  seg['name'] = 'New name'
end

p segment_hash

modify_segment(segment_hash)

p segment_hash
