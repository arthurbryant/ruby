#!/usr/bin/ruby

COPY_DIR = "/pub/deploygate2/"
Dir.chdir(COPY_DIR)

Dir.glob("*").each do |sub_dir|
  Dir[File.join(sub_dir, "/*")].each do |file|
    %x[ aws s3 cp #{file} s3://dg-arthurbryant/binaries/#{file} --recursive ]
    p file
  end
end
