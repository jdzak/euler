class FibonacciSequenceGenerator
  def initialize(first, second)
    @first, @second = first, second
  end
  def up_to(max)
    sequence = [@first, @second]
    while(sequence[-1] + sequence[-2] <= max)
      sequence << sequence[-1] + sequence[-2]
    end
    sequence
  end
end