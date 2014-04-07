desc 'Remove unix backup'
task :remove_unix do
  system('echo remove unix')
end

desc 'Remove windows backup'
task :remove_windows do
  system('echo remove windows')
end

desc 'Remove files whose name end with a tidle'
task :remove_backup  => [:remove_unix, :remove_windows] do
  system('echo remove all')
end

