search_engine = 
    %w[Google Yahoo].map do |engine|
    "http://www." + engine + ".com" 
end;

def test_return
  return;
end

output = test_return();
puts output;
puts "nil" if output == nil
