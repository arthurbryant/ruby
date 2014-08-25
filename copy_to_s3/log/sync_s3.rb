#!/usr/bin/ruby

Dir.chdir('/home/kyoro/git/deploygate/webfront')

BUCKET = 'deploygate'
APP_PATH = 'log/delete_app_file.log'
BINARY_PATH = 'log/delete_app_file.log'
APP_PATH_BAK = APP_PATH + '.bak'
BINARY_PATH_BAK = BINARY_PATH + '.bak'

%x[ cp -f #{APP_PATH} #{APP_PATH_BAK} ]
%x[ cp -f #{BINARY_PATH} #{BINARY_PATH_BAK} ]

pattern = /\/pub\/deploygate\/(.*)$/

puts "#!/bin/sh\n\n"

[APP_PATH_BAK , BINARY_PATH_BAK].each do |path|
  File.open(path).each do |line|
    match = pattern.match(line)
    if match
      puts "aws s3 rm --dryrun s3://#{BUCKET}/#{match[1]} --recursive"
    end
  end
end
