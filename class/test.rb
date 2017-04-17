#!/usr/bin/env ruby

require_relative 'lib/s3'

class Test
  def test
    S3::save();
  end
end

Test.new.test()
