while true
  begin
    sleep 1
    puts 'ping'
  #rescue Interrupt => e
  #  puts "system exit"
  #  raise e
  rescue StandardError => ex
    puts "Mmmmm, brains"
  rescue => e
    puts "over"
  rescue Exception => ex
    puts "exceptions"
  end
end
