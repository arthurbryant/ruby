str = "We can arrange to display the contents of the flash site-wide by including it in our application layout, as in Listing 7.27. (This code is a particularly ugly combination of HTML and ERb; an exercise in Section 7.6 shows how to make it prettier.)"
str_array = str.downcase.scan(/[\w']+/)
str_array.find {|word| puts word if word =~ /ar/}
