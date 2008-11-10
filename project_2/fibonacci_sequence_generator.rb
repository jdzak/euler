class FibonacciSequenceGenerator
  def initialize(first, second)
    @first = first
    @second = second
  end
  def up_to(max)
    sequence = [@first, @second]
    while(sequence[-1] + sequence[-2] < max)
      sequence << sequence[-1] + sequence[-2]
    end
    sequence
  end
end