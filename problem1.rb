require 'integer'

multiples_of_3 = 3.multiples(1..999)
multiples_of_5 =  5.multiples(1..999)
multiples_of_3.each { |num| multiples_of_3.delete(num) if multiples_of_5.include?(num) }

sum = (multiples_of_3 + multiples_of_5).inject {|sum, multiple| sum + multiple }
puts sum
    