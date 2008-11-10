require 'integer'
require 'array'

multiples_of_3 = 3.multiples(1..999)
multiples_of_5 =  5.multiples(1..999)

multiples = multiples_of_3 + multiples_of_5
unique_multiples = multiples.uniq

sum = unique_multiples.sum

puts "The answer is #{sum}"
    