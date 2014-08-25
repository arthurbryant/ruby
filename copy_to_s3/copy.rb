#!/usr/bin/ruby

BINARY_DIR_PATH = "/pub/deploygate2/"
PARENT_DIR_PATH = "/pub/"

# copy icons
Dir.chdir(BINARY_DIR_PATH)
%x[ aws s3 cp p s3://dg-arthurbryant/icons/ --recursive ]

# copy binaries
Dir.chdir(PARENT_DIR_PATH)
%x[ aws s3 cp deploygate2 s3://dg-arthurbryant/binaries/ --recursive ]

# delete 'p' directory in S3 after copy binaries
%x[ aws s3 rm s3://dg-arthurbryant/binaries/p --recursive ]
