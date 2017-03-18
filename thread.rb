def fun(id, count)
  i = 0
  while(i < count)
    puts "thread #{id} time: #{Time.now}"
    sleep(1)
    i += 1
  end
end

thread1 = Thread.new{ fun(1, 5) }
thread2 = Thread.new{ fun(2, 5) }
thread1.join
thread2.join
