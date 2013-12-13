 def add_icon(activity_list)
    activity_list.each do |a|
      a[:add] = "add"
    end
    return activity_list
  end

list = [
  { :name => 'a', :age => 20},
  { :name => 'a', :age => 21}
]
puts list
list = add_icon(list)
puts list
