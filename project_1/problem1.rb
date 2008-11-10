require 'integer'
require 'array'

multiples_of_3 = 3.multiples(1..999)
multiples_of_5 =  5.multiples(1..999)

unique_multiples = multiples_of_3 | multiples_of_5

puts "The answer is #{unique_multiples.sum}"
    