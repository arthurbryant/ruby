class HI
    def init(name = "arthur")
        puts "hello, #{name}"
    end
end

h = HI.new;
h.init("bryant")
h.init
# puts HI.instance_methods
puts HI.instance_methods(false)
puts h.respond_to?("name");
puts h.respond_to?("init");
puts "hello".respond_to?("each");
@names = ["hello", "world"];
if @names.respond_to?("each") then
    @names.each do |element|
        puts element
    end
end

puts __FILE__;
z =
    if __FILE__ == $0
        "aaa"
    else
        "bbb"
    end
puts z
puts "hello".object_id
puts "hello".object_id
puts "hello".object_id == "hello".object_id
