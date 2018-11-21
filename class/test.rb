#!/usr/bin/env ruby

require_relative 'lib/s3'

class Test
  def test
    S3::save();

    if Test.limit > 1
      puts "ok"
    end
  end

  def self.limit
    10
  end

  private

  def size
    10
  end
end

Test.new.test()
