require 'fibonacci_sequence_generator'

generator = FibonacciSequenceGenerator.new(1,2)
sequence = generator.up_to(4000000)
even_number_sequnce = sequence.select{|num| num % 2 == 0}
sum = even_number_sequnce.inject{|sum, num| sum + num}
puts "The answer is #{sum}"