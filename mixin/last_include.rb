module Income
  def tax
      puts "income tax" 
  end
end

module Cost
  def tax
      puts "cost tax" 
  end
end

class Company 
 include Income
 include Cost
end

c = Company.new
c.tax
