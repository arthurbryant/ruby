def fun(id, count)
  i = 0
  while(i < count)
    puts "thread #{id} time: #{Time.now}"
    sleep(1)
    i += 1
  end
end

thread1 = Thread.new{ fun(1, 100) }
thread2 = Thread.new{ fun(2, 100) }
thread3 = Thread.new{ fun(2, 100) }
thread4 = Thread.new{ fun(2, 100) }
thread1.join
thread2.join
thread3.join
thread4.join
