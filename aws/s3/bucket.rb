#!/usr/bin/env ruby

require 'aws-sdk-v1'
require 'csv'

s3 = AWS::S3.new
bucket = s3.buckets["fout-fox-development"]

bucket.objects.with_prefix('job-output/hourlySummary/20160425/').each do |object|
  puts object.inspect
  puts object.key

  unless (object.key.include?('SUCCESS'))
   table = CSV.new(object.read).read
        hourly_uid_map =  Hash.new(0)
        max_count_in_hour = 4

        # MySQL にログを一旦保存
        bulk = Array.new
        table.each_with_index do |row, idx|
          # 0:place_id, 1:datehour, 2:weekday(starts with monday:1), 3:uid
          # place = Place.find(row[0])
          job_time = DateTime.parse("#{row[1].to_s}00").strftime("%Y%m%d%H")
          datehour = (DateTime.parse(job_time))
          puts "------------ #{datehour}"
        end
  end
end

