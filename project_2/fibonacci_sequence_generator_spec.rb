require 'fibonacci_sequence_generator'

describe FibonacciSequenceGenerator do
  it "should find the fibonacci sequence for all numbers up to 10" do
    generator = FibonacciSequenceGenerator.new(1,2)
    generator.up_to(10).should == [1,2,3,5,8]
  end
end