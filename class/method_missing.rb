class Test

  def method_missing(method, *args)
    puts "#{method}: args: #{args.join(', ')}"
  end
end

t = Test.new
t.what_method(1, 2, 3)
