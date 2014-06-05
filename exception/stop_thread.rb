while true
  begin
    sleep 1
    puts 'ping'
  rescue Exception => ex
    puts "Mmmmm, brains"
  end
end
