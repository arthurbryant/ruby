fileData = "test file"
files = ['./aaa', './bbb']
File.open(files, 'wb') { |f| f.write(fileData) }
